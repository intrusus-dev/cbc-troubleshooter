# Carbon Black Cloud SE Troubleshooter

## Overview
This PowerShell script is designed to help Solution Engineering (SE) colleagues at VMware Carbon Black to troubleshoot common issues related to the Carbon Black Cloud sensor. The script provides the following features:
- Display a banner with the Carbon Black Cloud logo
- Display a menu to allow the user to choose between various troubleshooting options
- Get system information, including hostname, username, and Carbon Black Cloud sensor version
- Check network connectivity to the Carbon Black Cloud server
- Get log files for Carbon Black Support
- Put the Carbon Black Cloud sensor into bypass mode (requires admin privileges)
- Disable bypass mode for the Carbon Black Cloud sensor (requires admin privileges)

## Requirements
- Windows PowerShell 5.1 or later
- Admin privileges to run the script
- Carbon Black Cloud sensor installed on the system
- Uninstall code for the Carbon Black Cloud sensor (obtained from the CBC Console)

## Usage
1. Open PowerShell as an administrator
2. Change to the directory containing the script
3. Run the script by typing the following command: `.\cb-troubleshooter.ps1`
4. Follow the prompts to select a troubleshooting option

## Troubleshooting Options
1. Get system information
This option displays the following information:
- Hostname
- Username
- Carbon Black Cloud sensor version
- AMSI status
- CLI authenticated user
- Backend server
- Company code
- Policy name

2. Check network connectivity to Carbon Black Cloud server
This option tests connectivity to the Carbon Black Cloud server by pinging the server's IP address and domain name.

3. Get log files for Carbon Black Support
This option compresses the following log files into a ZIP archive:
- C:\ProgramData\CarbonBlack\Logs\CarbonBlackDefense.log
- C:\ProgramData\CarbonBlack\Logs\CarbonBlackResponse.log
- C:\ProgramData\CarbonBlack\Logs\CarbonBlackSensor.log
The archive is saved to the user's desktop.

4. Put Carbon Black Cloud sensor into bypass mode (requires admin privileges)
This option puts the Carbon Black Cloud sensor into bypass mode by running the `repcli bypass 1` command. This requires admin privileges.

5. Disable bypass mode for Carbon Black Cloud sensor (requires admin privileges)
This option disables bypass mode for the Carbon Black Cloud sensor by running the `repcli bypass 0` command. This requires admin privileges.

## License
This script is distributed under the MIT License. For more information, please see the LICENSE file.

## Author
Created by [Intrusus](https://github.com/intrusus-dev).
