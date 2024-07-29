@echo off
setlocal

REM Set your source and destination paths
set "source=%~dp0Crack\"  REM %~dp0 represents the current directory
set "destination=C:\Program Files (x86)\Softouch\EasyWorship 7"
set "filename=EasyWorship.exe"

REM Use xcopy to copy and replace the file
sudo xcopy "%source%%filename%" "%destination%" /y

REM Check if the copy was successful
if %errorlevel% equ 0 (
    echo File copied successfully!
) else (
    echo Error occurred during copy.
)

endlocal
pause

