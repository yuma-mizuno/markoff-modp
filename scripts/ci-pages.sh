#!/usr/bin/env bash

set -euo pipefail

skip_build=false
if [[ "${1:-}" == "--skip-build" ]]; then
  skip_build=true
  shift
fi

if (( $# != 0 )); then
  echo "usage: $0 [--skip-build]" >&2
  exit 2
fi

if [[ "$skip_build" == false ]]; then
  lake build BGS BGSBlueprint
fi

rm -rf -- _out/site
lake lean BGSBlueprintMain.lean -- --run BGSBlueprintMain.lean --output _out/site
python3 scripts/sanitize-blueprint-paths.py _out/site/html-multi

test -f _out/site/html-multi/index.html
test -f _out/site/html-multi/-verso-data/blueprint-manifest.json
test -f _out/site/html-multi/-verso-data/blueprint-html-cache.json
