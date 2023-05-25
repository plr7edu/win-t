::Google Chrome Restore

Echo Google Chrome Profiles Restoring...

cd %LOCALAPPDATA%\Google\Chrome\User Data\Default\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Google-Chrome-Backup\Google-Chrome-Default-Profile-Backup.zip"  

cd %LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Google-Chrome-Backup\Google-Chrome-Gaming-Profile-Backup.zip"

echo Done!

pause
