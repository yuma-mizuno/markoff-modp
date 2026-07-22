#!/usr/bin/env python3
"""Check the Lorenzini scan-to-TeX-to-Blueprint provenance chain."""

from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
BLUEPRINT = ROOT / "BGS" / "Blueprint" / "Chapters" / "HasseWeil.lean"
TEX_ROOT = ROOT / "Papers" / "LorenziniArithmeticGeometry"
PDF_MARKER = 'pdf := some { path := "source/LorenziniArithmeticGeometry.pdf" }'
TEXT_PATTERN = re.compile(
    r'text := some\s*\{\s*'
    r'path := "source/(Lorenzini(?:III|VII|VIII|IX|X)\.tex)"\s*'
    r"startLine := ([0-9]+)\s*"
    r"endLine := ([0-9]+)\s*\}\s*$",
    re.DOTALL,
)

EXPECTED_PAGE_MARKERS = {
    "LorenziniIII.tex": [(118, 136), (119, 137)],
    "LorenziniVII.tex": [(242, 260), (243, 261), (248, 266), (249, 267)],
    "LorenziniVIII.tex": [
        (283, 301),
        (284, 302),
        (285, 303),
        (286, 304),
        (287, 305),
        (288, 306),
        (289, 307),
        (290, 308),
    ],
    "LorenziniIX.tex": [(316, 334), (324, 342), (325, 343), (326, 344), (327, 345)],
    "LorenziniX.tex": [
        (351, 369),
        (352, 370),
        (353, 371),
        (354, 372),
        (355, 373),
        (356, 374),
        (357, 375),
        (358, 376),
        (359, 377),
        (360, 378),
    ],
}


def fail(message: str) -> None:
    print(f"Lorenzini source audit failed: {message}", file=sys.stderr)
    raise SystemExit(1)


def main() -> None:
    blueprint_lines = BLUEPRINT.read_text(encoding="utf-8").splitlines()

    tex_line_counts: dict[str, int] = {}
    for filename, expected in EXPECTED_PAGE_MARKERS.items():
        path = TEX_ROOT / filename
        if not path.is_file():
            fail(f"missing checked reconstruction {path}")
        text = path.read_text(encoding="utf-8")
        if any(ord(char) < 32 and char not in "\n\r\t" for char in text):
            fail(f"control character in {path}")
        actual: list[tuple[int, int]] = []
        for line in text.splitlines():
            ordinary = re.search(r"\\sourcepage\{([0-9]+)\}\{([0-9]+)\}", line)
            chapter = re.search(
                r"\\sourcechapterpage\{.*\}\{([0-9]+)\}\{([0-9]+)\}", line
            )
            match = ordinary or chapter
            if match is not None:
                actual.append((int(match.group(1)), int(match.group(2))))
        if actual != expected:
            fail(f"page markers in {path}: expected {expected}, found {actual}")
        tex_line_counts[filename] = len(text.splitlines())

    bad_location = re.compile(r'page := "248[^"\n]*Proposition 5\.7')
    for number, line in enumerate(blueprint_lines, start=1):
        if bad_location.search(line):
            fail(f"obsolete Proposition VII.5.7 location at {BLUEPRINT}:{number}")

    checked_spans = 0
    for index, line in enumerate(blueprint_lines):
        if PDF_MARKER not in line:
            continue
        window_start = max(0, index - 7)
        match = TEXT_PATTERN.search("\n".join(blueprint_lines[window_start:index]))
        if match is None:
            fail(
                f"Lorenzini PDF span at {BLUEPRINT}:{index + 1} is not preceded "
                "by a checked TeX line range in the same span"
            )
        filename, start_text, end_text = match.groups()
        start, end = int(start_text), int(end_text)
        if start < 1 or end < start or end > tex_line_counts[filename]:
            fail(
                f"invalid {filename} line range {start}--{end} at "
                f"{BLUEPRINT}:{index + 1}"
            )
        checked_spans += 1

    if checked_spans == 0:
        fail("no Lorenzini PDF spans found")

    print(
        f"Verified {checked_spans} Lorenzini Blueprint spans and "
        f"{sum(len(markers) for markers in EXPECTED_PAGE_MARKERS.values())} source pages."
    )


if __name__ == "__main__":
    main()
