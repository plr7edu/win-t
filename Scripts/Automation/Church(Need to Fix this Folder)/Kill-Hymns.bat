@echo off

:: Kill FastStone Capture
taskkill /F /IM FSCapture.exe /T > nul

:: Close Mixplorer
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\compile_scripts\MiXplorer_Window_Close.exe

:: Close Termux
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\compile_scripts\Termux_Window_Close.exe

:: Close Google Lens
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\compile_scripts\Google-Lens_Window_Close.exe

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul
taskkill /F /IM EasyWorshipHelper.exe /T > nul

:: Kill Directory Opus
taskkill /F /IM dopus.exe /T > nul

:: Kill Kithunu Gee Potha 2 PDF (Evince)
taskkill /F /IM evince.exe /T > nul

:: Kill WindowManager 
taskkill /F /IM WindowManager.exe /T > nul


