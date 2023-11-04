
# Windows Optimization Script

This PowerShell script is designed for professional use and serves the purpose of removing native Windows applications that are pre-installed. It not only uninstalls these apps but also takes a few additional actions to enhance the user experience and manage the Windows environment effectively. 


## Overview

This PowerShell script is designed for professional users looking to streamline their Windows operating system by removing pre-installed native applications, installing essential software, and optimizing system settings. It automates several tasks to enhance the user experience and boost productivity.

## Features

1. Uninstall Pre-installed Apps: This script identifies and removes various pre-installed Windows applications that may not be needed for professional use.

2. Install Essential Applications: It leverages Chocolatey to install essential software, including Office 365, Microsoft Teams, web browsers (Google Chrome and Firefox), multimedia tools (VLC), document readers (Adobe Reader and Foxit Reader), file archiving (7-Zip and WinRAR), and more.

3. Customize Windows Settings: The script sets up various Windows settings, such as enabling confirmation for file deletion, adjusting display scaling to 125%, and modifying registry settings for printer management.

4. Keep Windows Updated: It uses the PSWindowsUpdate module to ensure that your Windows operating system is up to date with the latest security and feature updates.

## Usage

1. Preparation:
    
* Before running the script, make sure you have administrative privileges.
* Ensure that PowerShell execution policy allows script execution. You can set it to Bypass for the current session using ```Set-ExecutionPolicy Bypass -Scope Process -Force```.

2. Running the Script:
* Copy the script content and paste it into a PowerShell window.
* Execute the script by running it.

3. Post-Installation:
* After running the script, your system will undergo changes and may require a restart for some settings to take effect. Use ```shutdown.exe /r /t 0``` to restart the system.

## Caution

This script makes changes to your system's configuration, and it is essential to review the script content and understand its implications before running it. Always back up critical data and create a system restore point before making significant system modifications.

## Disclaimer

The script is provided as-is and without any warranties. The author and the hosting platform are not responsible for any issues or data loss resulting from the use of this script.

**Use this script responsibly, and at your own risk.**
