@echo off
:: Set the path to the Desktop directory
set "desktop=%userprofile%\Desktop"

:: Create an empty text file named "Temp.txt"
echo. 2> "%desktop%\New Microsoft Word Document.docx"

:: Open the file using Notepad
start winword "%desktop%\New Microsoft Word Document.docx"
