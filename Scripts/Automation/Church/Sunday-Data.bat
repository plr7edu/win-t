@echo off

::Start Directory Opus with "New-Sunday" Tab Group
START C:\"Program Files"\GPSoftware\"Directory Opus"\dopusrt.exe /acmd Go TABGROUPLOAD "Sunday-Data"

::Start New Word File
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\New-Word-Document.vbs

:: Start Mixplorer
Start C:\Users\player-1\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.mixplorer.silver

::Start WindowManager with "Sunday-Data" Profile
WindowManager.exe -MINIMIZE -PROFILE "Sunday-Data"






