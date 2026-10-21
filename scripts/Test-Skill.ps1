$ErrorActionPreference = 'Stop'

$skillRoot = Split-Path -Parent $PSScriptRoot
$skillPath = Join-Path $skillRoot 'SKILL.md'
$requiredReferences = @(
    'references/system-document-template.md',
    'references/system-planning-template.md',
    'references/in-progress-template.md',
    'references/completion-template.md',
    'references/development-log-template.md',
    'references/document-index-template.md',
    'references/visualization-contract.md'
)

foreach ($relativePath in $requiredReferences) {
    $path = Join-Path $skillRoot $relativePath
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "Missing required reference: $relativePath"
    }
}

$skillContent = Get-Content -Raw -LiteralPath $skillPath -Encoding UTF8
foreach ($relativePath in $requiredReferences) {
    if ($skillContent -notmatch [regex]::Escape($relativePath)) {
        throw "SKILL.md does not reference: $relativePath"
    }
}

$indexPath = Join-Path $skillRoot 'references/document-index-template.md'
$indexContent = Get-Content -Raw -LiteralPath $indexPath -Encoding UTF8
if ($indexContent -match '05-Development-Log/\d{4}-\d{2}-\d{2}-') {
    throw 'Development-log index example must not use a date-prefixed filename.'
}

Write-Host 'Skill validation passed.'
