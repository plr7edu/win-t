@echo off
:: Set the path to the Desktop directory
set "desktop=%userprofile%\Desktop"

:: Create an empty text file named "Temp.txt"
echo. > "%desktop%\Temp-note.txt"

:: Open the file using Notepad
start notepad "%desktop%\Temp-note.txt"
