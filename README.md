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

# Carbon Black Cloud SE Troubleshooter

## Upcoming Features

The following features are planned for future releases of the script:

- Checking network connectivity to the Carbon Black Cloud server
  This option will perform more in-depth network tests, such as verifying that the required ports are open and testing the latency and packet loss of the connection.
- Checking if the sensor is using a proxy correctly, if a proxy is required
  This option will check if the proxy settings are correctly configured and if the sensor can communicate with the server through the proxy.
- Checking connection with Sensor Gateway
  This option will verify that the sensor can communicate with the Sensor Gateway and that the Sensor Gateway is properly configured.
- Checking if SSL inspection is interfering with the connection between the sensor and the Carbon Black Cloud server
  This option will check if any SSL inspection devices are causing issues with the sensor's communication with the Carbon Black Cloud server.
- Checking if DNS issues persist
  This option will verify if DNS resolution issues are causing problems with the sensor's communication with the Carbon Black Cloud server.
- Checking if VDI sensor requirements are set correctly
  This option will verify if the sensor is correctly configured for use in a virtual desktop infrastructure (VDI) environment.
- Option to make an automatic walkthrough of all options
  This option will allow the user to run a complete walkthrough of all the troubleshooting options in the script, without having to manually select each one.
- Option to summarize findings for VMware Carbon Black support cases
  This option will summarize the findings from the troubleshooting options and generate a report that can be submitted to VMware Carbon Black support for further assistance.

Stay tuned for more updates and features in future releases of the script!

## License
This script is distributed under the MIT License. For more information, please see the LICENSE file.

## Author
Created by [Intrusus](https://github.com/intrusus-dev).
