@echo off

:: Kill Google Drive
taskkill /F /IM GoogleDriveFS.exe /T > nul

:: Start Google Drive
START C:\"Program Files"\Google\"Drive File Stream"\launch.bat


