@echo off

::Start WindowManager with "Sunday-Data-1" Profile
::Start cmd.exe /c WindowManager.exe -PROFILE "Sunday-Data-1"
START C:\"Program Files (x86)"\WindowManager\WindowManager.exe PROFILE ( "Sunday-Data-1" )

::Start Directory Opus with "New Hymns" Tab Group
START C:\"Program Files"\GPSoftware\"Directory Opus"\dopusrt.exe /acmd Go TABGROUPLOAD "New Sunday"

::Start New Word File
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\New-Word-Document.vbs

:: Start Mixplorer
Start C:\Users\player-1\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.mixplorer.silver

:: Close WindowManager Window
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\compile_scripts\WindowManager_Window_Close.exe
