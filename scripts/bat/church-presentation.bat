@echo off

:: Create a virtual desktop
START %systemdrive%\PLR-WINDOWS-HOST-TOOLS\"Send Windows Key"\"SendWKey v1.1"\SendWKey.exe #{CTRLDOWN}D{CTRLUP}

:: Start "Windows Desktop Switcher" (Auto Hot Key Script)
START %systemdrive%\PLR-WINDOWS-HOST-TOOLS\"Windows Desktop Switcher (Auto Hot Key Script)"\desktop_switcher.ahk

:: Start Key Manager 
START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe

:: Open EasyWorship7
START C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe
