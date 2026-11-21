
# Ellstrom folder and notes setup. Paste entire block into normal PowerShell.
# No administrator rights required. Existing notes are never overwritten.
$ErrorActionPreference = 'Stop'
$root = Join-Path $env:USERPROFILE 'OneDrive - CNC Software, LLC\Documents\Mastercam\Mastercam Cases\Ellstrom'
$parent = Split-Path $root -Parent
if (-not (Test-Path -LiteralPath $parent -PathType Container)) {
    Write-Warning "Mastercam Cases folder not found: $parent"
    return
}

# Each entry: folder name, portal post name, Mastercam version.
$machines = @(
    @('doosan_vtr1620m','MPPOSTABILITY_DOOSAN_VTR1620M','2024'),
    @('mazak_variaxis_730t','MPPOSTABILITY_MAZAK_VARIAXIS_730T','2023'),
    @('okuma_vtm1200yb','MPPOSTABILITY_OKUMA_VTM1200YB','2024'),
    @('doosan_dhf_8000_rah_siemens','MPPOSTABILITY_DOOSAN_DHF_8000_RAH_SIEMENS','2026'),
    @('doosan_dvf8000t','MPPOSTABILITY_DOOSAN_DVF8000T','2023'),
    @('doosan_dvf8000t_siemens','MPPOSTABILITY_DOOSAN_DVF8000T_SIEMENS','2027'),
    @('doosan_dhf_8000_fanuc','MPP_DOOSAN_DHF_8000_FANUC','2027'),
    @('mazak_e1250v','MPP_MAZAK_E1250V','2027'),
    @('mazak_integrex_i800v','MPP_MAZAK_INTEGREX_i800V','2027'),
    @('mazak_variaxis_i300_awc','MPP_MAZAK_VARIAXIS_I300_AWC','2027'),
    @('zimmermann_fzu32_siemens','MPP_ZIMMERMANN_FZU32_SIEMENS','2027')
)
$folders = @('original files','post','vericut sim','tests','to post team','to customer','old versions')
$purpose = @{
    'customer info' = 'Store contacts, general correspondence, customer-wide licensing, and shared reference information.'
    'original files' = 'Store untouched customer files or downloaded post packages. Never modify these originals.'
    'post' = 'Store working posts, machine definitions, control definitions, and associated files.'
    'vericut sim' = 'Store VERICUT projects, machine models, controls, and simulation files.'
    'tests' = 'Store Mastercam test parts, posted NC programs, screenshots, and results.'
    'to post team' = 'Store the exact files sent to the Mastercam post team and record Salesforce case numbers.'
    'to customer' = 'Store the verified deliverables being sent to Ellstrom and record delivery dates.'
    'old versions' = 'Store superseded working files. Keep the original customer files separately.'
}
$utf8 = New-Object System.Text.UTF8Encoding($false)
$created = 0

function Add-Notes([string]$dir, [string]$content) {
    $file = Join-Path $dir 'notes.md'
    if (-not (Test-Path -LiteralPath $file)) {
        [System.IO.File]::WriteAllText($file, $content.Trim() + "`r`n", $utf8)
        $script:created++
    }
}

New-Item -ItemType Directory -Path $root -Force | Out-Null
$customer = Join-Path $root 'customer info'
New-Item -ItemType Directory -Path $customer -Force | Out-Null

$index = @('# Ellstrom - customer index','','Open the machine notes.md to see current status and NEXT ACTION.','','## Machines')
foreach ($m in $machines) {
    $name = $m[0]; $post = $m[1]; $version = $m[2]
    $machineDir = Join-Path $root $name
    New-Item -ItemType Directory -Path $machineDir -Force | Out-Null
    $index += "- [$name]($name/notes.md) - $post - Mastercam $version"

    $machineNote = @"
# $name

Post: $post
Mastercam version: $version
Control / configuration: verify
Salesforce case:
Status: not reviewed

## NEXT ACTION
- [ ]

## Customer request / problem

## What I tried

## Results / resolution

## Changes and revisions
| Date | Change or finding | Next step |
| --- | --- | --- |

## Where to put files
- original files: untouched incoming packages
- post: working post files
- vericut sim: simulations
- tests: test programs and results
- to post team: submitted packages
- to customer: delivered packages
- old versions: superseded working copies
"@
    Add-Notes $machineDir $machineNote

    foreach ($folder in $folders) {
        $dir = Join-Path $machineDir $folder
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        $note = @"
# $folder

## What belongs here
$($purpose[$folder])

## Files / dates / case numbers

## Findings / updates

## NEXT ACTION
- [ ]
"@
        Add-Notes $dir $note
    }
}
$index += @('','## Customer-wide open issues','','## NEXT ACTION','- [ ]')
Add-Notes $root ($index -join "`r`n")
Add-Notes $customer "# Customer info`r`n`r`n$($purpose['customer info'])`r`n`r`n## Contacts`r`n`r`n## Notes and case numbers`r`n"

# Also cover directories that existed before the script was run.
$allDirs = @(Get-Item -LiteralPath $root) + @(Get-ChildItem -LiteralPath $root -Directory -Recurse)
foreach ($dir in $allDirs) {
    Add-Notes $dir.FullName "# $($dir.Name)`r`n`r`n## Purpose`r`n`r`n## Notes`r`n`r`n## NEXT ACTION`r`n- [ ]"
}
$missing = @($allDirs | Where-Object { -not (Test-Path -LiteralPath (Join-Path $_.FullName 'notes.md')) })
Write-Host "Done. $($machines.Count) machine folders, $($allDirs.Count) total folders checked." -ForegroundColor Green
Write-Host "Created $created notes.md files. Missing notes.md: $($missing.Count)."
Write-Host 'Existing files and notes were not modified.'
Start-Process explorer.exe -ArgumentList "`"$root`"" -ErrorAction SilentlyContinue
