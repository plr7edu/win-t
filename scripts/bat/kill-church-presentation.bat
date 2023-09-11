@echo off

:: Kill Key Manager 
taskkill /F /IM keymanager.exe /T > nul

:: Kill "Windows Desktop Switcher" (Auto Hot Key Script)
taskkill /F /IM AutoHotkeyU64.exe /T > nul

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul
taskkill /F /IM EasyWorshipHelper.exe /T > nul

:: Close active virtual desktop
START %systemdrive%\PLR-WINDOWS-HOST-TOOLS\"Send Windows Key"\"SendWKey v1.1"\SendWKey.exe #{CTRLDOWN}{F4}{CTRLUP}

:: Kill Powerpoint Presentation
taskkill /F /IM POWERPNT.exe /T > nul

@pause
