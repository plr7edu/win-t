@echo off

:: Start Kanata with "Sunday-data.kdb" config
START /min C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\kanata_config\start-kanata.bat

::Start Directory Opus with "New Hymns" Tab Group
START C:\"Program Files"\GPSoftware\"Directory Opus"\dopusrt.exe /acmd Go TABGROUPLOAD "New-Sunday"

::Start New Word File
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\New-Word-Document.vbs

:: Start Mixplorer
Start C:\Users\player-1\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.mixplorer.silver

::Start WindowManager with "SD-1" Profile
WindowManager.exe -MINIMIZE -PROFILE "SD-1-Directory-Opus"






