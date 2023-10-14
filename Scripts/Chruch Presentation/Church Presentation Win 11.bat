@echo off

:: Create a virtual desktop
START %systemdrive%\PLR-WINDOWS-HOST-TOOLS\"Send Windows Key"\"SendWKey v1.1"\SendWKey.exe #{CTRLDOWN}D{CTRLUP}

:: Start "Windows Desktop Switcher" (Auto Hot Key Script)
START %systemdrive%\PLR-WINDOWS-HOST-TOOLS\"Windows Desktop Switcher (Auto Hot Key Script)"\"Windows 11"\desktop_switcher.ahk

:: Sinhala Tamil IME
START C:\"Program Files (x86)"\"SinhalaTamil IME"\"SinhalaTamil IME.exe"

:: Start Key Manager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
"C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh

:: Open EasyWorship7
START C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe



