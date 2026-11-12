$report = @(
    "WINDOWS: $([Environment]::OSVersion.VersionString)"
    "POWERSHELL: $($PSVersionTable.PSVersion)"
    "PYTHON: $(python --version 2>&1)"
    "EDGE: $((Get-Item 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe' -ErrorAction SilentlyContinue).VersionInfo.ProductVersion)"
)
$report | clip
