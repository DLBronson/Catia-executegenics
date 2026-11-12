
$system = Get-CimInstance Win32_ComputerSystem
$bios = Get-CimInstance Win32_BIOS
$os = Get-CimInstance Win32_OperatingSystem

$now = Get-Date
$boot = $os.LastBootUpTime
$uptime = $now - $boot

Write-Output "===== COMPUTER AGE & UPTIME ====="
Write-Output "Manufacturer: $($system.Manufacturer)"
Write-Output "Model: $($system.Model)"
Write-Output "Computer Name: $($env:COMPUTERNAME)"
Write-Output "BIOS Release Date: $($bios.ReleaseDate)"
Write-Output "Windows Install Date: $($os.InstallDate)"
Write-Output "Last Restart: $boot"
Write-Output "Uptime: $($uptime.Days) days, $($uptime.Hours) hours, $($uptime.Minutes) minutes"
Write-Output "Current Date: $now"
