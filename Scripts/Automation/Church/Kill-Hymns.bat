@echo off

:: Kill FastStone Capture
taskkill /F /IM FSCapture.exe /T > nul

:: Kill WSA (Mixplorer & Termux)
taskkill /F /IM WsaClient.exe /T > nul

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul
taskkill /F /IM EasyWorshipHelper.exe /T > nul

:: Kill Directory Opus
taskkill /F /IM dopus.exe /T > nul

:: Kill Kithunu Gee Potha 2 PDF (Evince)
taskkill /F /IM evince.exe /T > nul

:: Kill WindowManager 
taskkill /F /IM WindowManager.exe /T > nul
