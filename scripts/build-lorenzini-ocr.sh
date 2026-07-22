#!/usr/bin/env bash

set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
book="$root/Book"
input="$book/An Invitation to Arithmetic Geometry.pdf"
output="$book/An Invitation to Arithmetic Geometry.ocr.pdf"
sidecar="$book/An Invitation to Arithmetic Geometry.ocr.txt"
tool_dir="$book/.ocr-toolchain"
mamba_root="$book/.ocr-mamba"
mamba="$tool_dir/bin/micromamba"
archive="$book/micromamba-linux-64.tar.bz2"

micromamba_version="2.8.1"
micromamba_sha256="a934c3709c997feae403a27fd1e321c106d26ffa4f294800ffb11cbca3e8515"
ocrmypdf_version="17.8.1"
tesseract_version="5.5.2"

if [[ ! -f "$input" ]]; then
  echo "Missing source scan: $input" >&2
  exit 1
fi

if [[ ! -x "$mamba" ]]; then
  mkdir -p "$tool_dir"
  curl --fail --location \
    "https://micro.mamba.pm/api/micromamba/linux-64/$micromamba_version" \
    --output "$archive"
  printf '%s  %s\n' "$micromamba_sha256" "$archive" | sha256sum --check --status
  tar -xjf "$archive" -C "$tool_dir" bin/micromamba
fi

export MAMBA_ROOT_PREFIX="$mamba_root"

if [[ ! -x "$mamba_root/envs/ocr/bin/ocrmypdf" ]]; then
  "$mamba" create -y -n ocr -c conda-forge \
    "ocrmypdf=$ocrmypdf_version" \
    "tesseract=$tesseract_version" \
    ghostscript qpdf pngquant poppler
fi

actual_ocrmypdf="$("$mamba" run -n ocr ocrmypdf --version)"
actual_tesseract="$("$mamba" run -n ocr tesseract --version 2>&1 | sed -n '1s/^tesseract //p')"
if [[ "$actual_ocrmypdf" != "$ocrmypdf_version" ]]; then
  echo "Expected OCRmyPDF $ocrmypdf_version, found $actual_ocrmypdf" >&2
  exit 1
fi
if [[ "$actual_tesseract" != "$tesseract_version" ]]; then
  echo "Expected Tesseract $tesseract_version, found $actual_tesseract" >&2
  exit 1
fi

rm -f -- "$output" "$sidecar"
"$mamba" run -n ocr ocrmypdf \
  --language eng \
  --optimize 0 \
  --output-type pdf \
  --jobs 4 \
  --sidecar "$sidecar" \
  "$input" "$output"

input_pages="$("$mamba" run -n ocr pdfinfo "$input" | sed -n 's/^Pages:[[:space:]]*//p')"
output_pages="$("$mamba" run -n ocr pdfinfo "$output" | sed -n 's/^Pages:[[:space:]]*//p')"
if [[ "$input_pages" != "$output_pages" ]]; then
  echo "Page-count mismatch: source=$input_pages OCR=$output_pages" >&2
  exit 1
fi
if [[ ! -s "$sidecar" ]]; then
  echo "OCR sidecar is empty" >&2
  exit 1
fi

echo "Created $output ($output_pages pages)"
echo "Created $sidecar"
