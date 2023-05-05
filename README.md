# Carbon Black Cloud SE Troubleshooter

## Overview
This PowerShell script is designed to help Solution Engineering (SE) colleagues at VMware Carbon Black to troubleshoot common issues related to the Carbon Black Cloud sensor. 
The script provides the following features:
- Get system information, including hostname, username, and Carbon Black Cloud sensor version
- Check network connectivity to the Carbon Black Cloud
- Get log files for Carbon Black Support

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

## Upcoming Features

The following features are planned for future releases of the script:

- 🌐 Checking network connectivity to the Carbon Black Cloud server  
- 🔒 Checking if the sensor is using a proxy correctly, if a proxy is required
- 🌍 Checking connection with Sensor Gateway
- 🔑 Checking if SSL inspection is interfering with the connection between the sensor and the Carbon Black Cloud server
- 🌐 Checking if DNS issues persist
- 💻 Checking if VDI sensor requirements are set correctly
- 🔄 Option to make an automatic walkthrough of all options
- 📝 Option to summarize findings for VMware Carbon Black support cases

Stay tuned for more updates and features in future releases of the script!

## License
This script is distributed under the MIT License. For more information, please see the LICENSE file.

## Author
Created by [Intrusus](https://github.com/intrusus-dev).
