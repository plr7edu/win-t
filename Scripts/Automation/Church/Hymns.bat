@echo off

::Start FastStone Capture
START C:\"Program Files (x86)"\"FastStone Capture"\FSCapture.exe

:: Start Mixplorer
Start C:\Users\player-1\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.mixplorer.silver

:: Start Termux
Start C:\Users\player-1\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.termux

:: Start EasyWorship
START /min C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe

::Start Directory Opus with "New Hymns" Tab Group
START C:\"Program Files"\GPSoftware\"Directory Opus"\dopusrt.exe /acmd Go TABGROUPLOAD "New Hymns"

::Start Kithunu Gee Potha 2 PDF
START D:\CHRUCH\"Bolawalana Church Media Group Files"\Hymns\"Hymns - PDF"\"Kethunu Gee Potha 2.pdf"

:: Start WindowManager with Church Profile
WindowManager.exe -MINIMIZE -PROFILE "church"

