# Declare Variables
clear
$year = (Get-Date).Year.ToString()
$banner = @'
                                                            
_|                          _|          _|                
_|_|_|_|  _|  _|_|    _|_|_|  _|_|_|    _|_|_|_|  _|  _|_|  
  _|      _|_|      _|_|      _|    _|    _|      _|_|      
  _|      _|            _|_|  _|    _|    _|      _|        
    _|_|  _|        _|_|_|    _|    _|      _|_|  _|        

'@

# Display Welcome Screen
Write-Host $logo
Write-Host $banner
Write-Host "VMware Carbon Black - TRoubleSHooTR"
Write-Host "Copyright © $year by L. Schulze (https://github.com/intrusus-dev)"
Write-Host "Distributed under the MIT License (https://github.com/cbc-troubleshooter)"
Write-Host ""
Write-Host "WARNING: This tool is intended for Solution Engineers of VMware Carbon Black."
Write-Host "USE WITH CAUTION!"
Write-Host ""
Write-Host ""

# Check for Admin privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "This script requires elevated privileges to run. Please enter the administrator credentials below to continue."

    # Launch a new PowerShell process with elevated privileges
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$($PSCommandPath)`"" -Verb RunAs
    Exit
}

# Going into Main Menu
do {
    $choice = Read-Host "Enter your choice (1-4)"
} until ($choice -match '^[1-4]$')

switch ($choice) {
    1 {
        # Put sensor into bypass mode
        $isBypass = $false
        $repcliStatus = & "C:\Program Files\Confer\repcli" status 2>&1
        if ($repcliStatus -match "Sensor State\[Bypass Mode\]") {
            $isBypass = $true
        }

        if ($isBypass) {
            Write-Host "I can see that the sensor is already in bypass mode. Thank you!"
        }
        else {
            Write-Host "Putting Carbon Black Cloud sensor into bypass mode"
            # Run the repcli command with bypass option
            & "C:\Program Files\Confer\repcli.exe" bypass 1
            $isBypass = $true
        }

        # Code to get basic info about the system
        Write-Host "Getting basic system info..."
        # Get the hostname
        $hostname = hostname

        # Get the username
        $username = $env:USERNAME

        # Get the Carbon Black Cloud Sensor version
        $sensorVersion = Get-ItemPropertyValue -Path "HKLM:\SOFTWARE\CbDefense" -Name "SensorVersion"
       
        # Get the cfg.ini file content
        $cfgFile = 'C:\ProgramData\CarbonBlack\DataFiles\cfg.ini'
        $cfgContent = Get-Content $cfgFile

        # Parse the cfg.ini file content
        $amsiEnabled = $cfgContent | Select-String -Pattern '^AmsiEnabled=' | ForEach-Object { $_ -replace '^AmsiEnabled=' }
        $authenticatedCLIUsers = $cfgContent | Select-String -Pattern '^AuthenticatedCLIUsers=' | ForEach-Object { $_ -replace '^AuthenticatedCLIUsers=' }
        $backendServer = $cfgContent | Select-String -Pattern '^BackendServer=' | ForEach-Object { $_ -replace '^BackendServer=' }
        $companyCode = $cfgContent | Select-String -Pattern '^CompanyCode=' | ForEach-Object { $_ -replace '^CompanyCode=' }
        $policyName = $cfgContent | Select-String -Pattern '^PolicyName=' | ForEach-Object { $_ -replace '^PolicyName=' }

        # Display the system information
        Write-Host "Hostname: $hostname"
        Write-Host "Username: $username"
        Write-Host "Sensor Version: $sensorVersion"
        Write-Host "Amsi Enabled: $amsiEnabled"
        Write-Host "Authenticated CLI Users: $authenticatedCLIUsers"
        Write-Host "Backend Server: $backendServer"
        Write-Host "Company Code: $companyCode"
        Write-Host "Policy Name: $policyName"

        # Disable bypass mode if it was enabled
        if ($isBypass) {
            Write-Host "Disabling bypass mode"
            # Run the repcli command with bypass option
            & "C:\Program Files\Confer\repcli.exe" bypass 0
            $isBypass = $false
        }
    }
    2 {
        # Code to check network connectivity to CBC
        Write-Host "Checking network connectivity to CBC..."
    }
    3 {
        # Code to get log files for CB Support
        Write-Host "Getting log files for CB Support..."
    }
    4 {
        # Exit the script
        Write-Host "Exiting..."
        exit
    }
}
