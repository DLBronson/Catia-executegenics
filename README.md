& {
    $now = Get-Date
    "===== MASTERCAM ALL-IN-ONE DIAGNOSTICS ====="
    "Computer: $env:COMPUTERNAME"
    "Report Date: $now"
    ""
    try {
        $cs = Get-CimInstance Win32_ComputerSystem -ErrorAction Stop
        $bios = Get-CimInstance Win32_BIOS
        $os = Get-CimInstance Win32_OperatingSystem
        $cpu = Get-CimInstance Win32_Processor | Select-Object -First 1
        $board = Get-CimInstance Win32_BaseBoard | Select-Object -First 1
        $gpus = @(Get-CimInstance Win32_VideoController)
        $uptime = $now - $os.LastBootUpTime
        "===== SYSTEM AND WINDOWS ====="
        "Manufacturer: $($cs.Manufacturer)"
        "Model: $($cs.Model)"
        "CPU: $($cpu.Name)"
        "RAM: $([math]::Round($cs.TotalPhysicalMemory / 1GB, 1)) GB"
        "Motherboard: $($board.Product)"
        "BIOS: $($bios.SMBIOSBIOSVersion) / $($bios.ReleaseDate)"
        "Windows: $($os.Caption) (Build $($os.BuildNumber))"
        "Windows Installed: $($os.InstallDate)"
        "Last Boot: $($os.LastBootUpTime)"
        "Uptime: $($uptime.Days)d $($uptime.Hours)h $($uptime.Minutes)m"
        ""
        "===== ESTIMATED HARDWARE AGE ====="
        $year = $null
        $source = "Not established"
        if ($cpu.Name -match 'Core\(TM\) i[3579]-(\d{4,5})') {
            $digits = $matches[1]
            $gen = if ($digits.Length -eq 5) { [int]$digits.Substring(0,2) } else { [int]$digits.Substring(0,1) }
            $release = @{8=2017;9=2018;10=2019;11=2020;12=2021;13=2022;14=2023}
            if ($release.ContainsKey($gen)) {
                $year = $release[$gen]
                $source = "Approximate Intel CPU generation launch year"
            }
        }
        if ($year) {
            $age = $now.Year - $year
            $class = if ($age -ge 10) {"Legacy (10+ years)"} elseif ($age -ge 7) {"Older (7-9 years)"} elseif ($age -ge 4) {"Aging (4-6 years)"} else {"Recent (0-3 years)"}
            "Approximate CPU-generation age: $age years ($class)"
            "Basis: $source"
            "Note: CPU launch year is not PC manufacture date."
        } else {
            "Computer age: Unknown from supported CPU models."
            "BIOS release year: $($bios.ReleaseDate.Year) (firmware age only, not PC age)"
        }
        ""
        "===== GRAPHICS ====="
        foreach ($gpu in $gpus) {
            "GPU: $($gpu.Name)"
            "Driver: $($gpu.DriverVersion) / $($gpu.DriverDate)"
            "Reported VRAM: $([math]::Round($gpu.AdapterRAM / 1GB, 2)) GB (may be inaccurate)"
            "Resolution: $($gpu.CurrentHorizontalResolution) x $($gpu.CurrentVerticalResolution)"
            "Status: $($gpu.Status)"
            "------------------------------"
        }
    } catch {
        "System query failed: $($_.Exception.Message)"
    }
    $logs = @(
        @{Name="MASTERCAM APPLICATION ERRORS"; Log="Application"; IDs=$null},
        @{Name="MASTERCAM CODE INTEGRITY EVENTS"; Log="Microsoft-Windows-CodeIntegrity/Operational"; IDs=@(3033,3034,3063,3064,3076,3077,3089)}
    )
    foreach ($item in $logs) {
        ""
        "===== $($item.Name) (LAST 30 DAYS) ====="
        try {
            $filter = @{LogName=$item.Log; StartTime=$now.AddDays(-30)}
            if ($item.Log -eq "Application") { $filter.Level = @(2,3) }
            $events = @(Get-WinEvent -FilterHashtable $filter -MaxEvents 3000 -ErrorAction Stop |
                Where-Object {
                    $_.Message -match '(?i)Mastercam|CNC Software|MCMill|MCPostRes' -and
                    (-not $item.IDs -or $_.Id -in $item.IDs)
                } | Select-Object -First 10)
            if ($events.Count -eq 0) { "No matching events among the latest 3000 log entries." }
            foreach ($e in $events) {
                "Date: $($e.TimeCreated) | ID: $($e.Id) | Source: $($e.ProviderName)"
                "Message: $($e.Message)"
                "------------------------------"
            }
        } catch {
            "Log unavailable, empty, or access restricted: $($_.Exception.Message)"
        }
    }
    ""
    "===== END OF REPORT ====="
} | clip
