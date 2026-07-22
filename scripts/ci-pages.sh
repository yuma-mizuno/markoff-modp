#!/usr/bin/env bash

set -euo pipefail

lake build BGS BGSBlueprint
rm -rf -- _out/site
lake lean BGSBlueprintMain.lean -- --run BGSBlueprintMain.lean --output _out/site
python3 scripts/sanitize-blueprint-paths.py _out/site/html-multi

test -f _out/site/html-multi/index.html
test -f _out/site/html-multi/-verso-data/blueprint-manifest.json
test -f _out/site/html-multi/-verso-data/blueprint-html-cache.json
