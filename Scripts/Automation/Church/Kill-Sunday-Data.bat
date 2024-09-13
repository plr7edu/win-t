@echo off

:: Kill Directory Opus
taskkill /F /IM dopus.exe /T > nul

:: Kill WindowManager 
taskkill /F /IM WindowManager.exe /T > nul

:: Kill Microsoft Word
taskkill /F /IM Winword.exe /T > nul

:: Close Mixplorer
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\compile_scripts\MiXplorer_Window_Close.exe

:: Close Google Lens
START C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\compile_scripts\Google-Lens_Window_Close.exe

::Kill Kanata
taskkill /F /IM kanata.exe /T > nul