# List and remove pre-installed applications
Get-AppxPackage | Select-Object Name

# 3D Builder
Get-AppxPackage *3dbuilder* | Remove-AppxPackage

# News
Get-AppxPackage *bingnews* | Remove-AppxPackage

# Calendar and Mail
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage

# Contacts
Get-AppxPackage *people* | Remove-AppxPackage

# Voice Recorder
Get-AppxPackage *soundrecorder* | Remove-AppxPackage

# Films & TV
Get-AppxPackage *zunevideo* | Remove-AppxPackage

# Finance
Get-AppxPackage *bingfinance* | Remove-AppxPackage

# Get Started
Get-AppxPackage *getstarted* | Remove-AppxPackage

# Groove Music
Get-AppxPackage *zunemusic* | Remove-AppxPackage

# Hub and Feedback
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage

# Games
Get-AppxPackage *Microsoft.GamingApp* | Remove-AppxPackage

# Weather
Get-AppxPackage *bingweather* | Remove-AppxPackage

# Microsoft Solitaire Collection
Get-AppxPackage *solitairecollection* | Remove-AppxPackage

# Microsoft Wallet
Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage

# Get Help
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage

# Get Office
Get-AppxPackage *officehub* | Remove-AppxPackage

# Get Skype
Get-AppxPackage *skypeapp* | Remove-AppxPackage

# Phone Companion
Get-AppxPackage *windowsphone* | Remove-AppxPackage

# PowerAutomate
Get-AppxPackage *Microsoft.PowerAutomateDesktop* | Remove-AppxPackage

# Mixed Reality
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage

# Skype
Get-AppxPackage *skypeapp* | Remove-AppxPackage

# Sports
Get-AppxPackage *bingsports* | Remove-AppxPackage

# Teams
Get-AppxPackage *MicrosoftTeams* | Remove-AppxPackage

# 3D Viewers
Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage

# Your Phone
Get-AppxPackage Microsoft.YourPhone -AllUsers | Remove-AppxPackage

# Windows Store
Get-AppxPackage *windowsstore* | Remove-AppxPackage

# Xbox
Get-AppxPackage *xboxapp* | Remove-AppxPackage

# Zune Music
Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage

# Zune Video
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage

# Instagram
Get-AppxPackage *instagram* | Remove-AppxPackage

# Spotify
Get-AppxPackage *spotify* | Remove-AppxPackage

# TikTok
Get-AppxPackage *tiktok* | Remove-AppxPackage

# Installing core applications with Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade chocolatey

choco install office365business -y
choco install microsoft-teams -y
choco install googlechrome -y
choco install firefox -y
choco install vlc -y
choco install adobereader -y
choco install 7zip -y
choco install foxitreader -y
choco install winrar -y

# Set Windows delete confirmation
New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "ConfirmFileDelete" -Value 1

# Update Windows
Install-PackageProvider -Name NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
Import-Module PSWindowsUpdate

Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll -AutoReboot

# Restart Windows
shutdown.exe /r /t 0
