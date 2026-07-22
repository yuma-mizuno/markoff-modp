$ErrorActionPreference = 'Stop'

lake build BGS BGSBlueprint
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

# Verso v4.32.0-rc1 embeds search asset names with forward-slash prefix
# stripping. On Windows the embedded names use backslashes, so they retain a
# "../../../static-web/search" prefix. Pre-create that destination, then copy
# the emitted runtime files into the site's expected search directory.
New-Item -ItemType Directory -Force -Path '_out/static-web/search' | Out-Null

$workspaceRoot = (Resolve-Path -LiteralPath '.').Path
$siteRoot = [IO.Path]::GetFullPath((Join-Path $workspaceRoot '_out/site'))
$expectedSiteRoot = [IO.Path]::GetFullPath("$workspaceRoot\_out\site")
if ($siteRoot -ne $expectedSiteRoot) {
  throw "Refusing to clear unexpected Blueprint site path: $siteRoot"
}
if (Test-Path -LiteralPath $siteRoot) {
  Remove-Item -LiteralPath $siteRoot -Recurse -Force
}

lake lean BGSBlueprintMain.lean -- --run BGSBlueprintMain.lean --output _out/site
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

python scripts/sanitize-blueprint-paths.py _out/site/html-multi
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

if (Test-Path -LiteralPath '_out/static-web/search') {
  New-Item -ItemType Directory -Force -Path '_out/site/html-multi/-verso-search' |
    Out-Null
  Copy-Item -Path '_out/static-web/search/*' `
    -Destination '_out/site/html-multi/-verso-search' -Force
}

$required = @(
  '_out/site/html-multi/index.html',
  '_out/site/html-multi/-verso-data/blueprint-manifest.json',
  '_out/site/html-multi/-verso-data/blueprint-html-cache.json',
  '_out/site/html-multi/-verso-search/search-page.js'
)

foreach ($path in $required) {
  if (-not (Test-Path -LiteralPath $path)) {
    throw "Blueprint build did not produce $path"
  }
}

Write-Host 'Blueprint site: _out/site/html-multi/index.html'
