::Google Chrome Backup

mkdir %HOMEPATH%\Desktop\Google-Chrome-Backup\

Echo Google Chrome Default Profile Backup Zipping...
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Google-Chrome-Backup\Google-Chrome-Default-Profile-Backup.zip" "%LOCALAPPDATA%\Google\Chrome\User Data\Default\*"
echo Done!

Echo Google Chrome Gaming Profile Backup Zipping...
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Google-Chrome-Backup\Google-Chrome-Gaming-Profile-Backup.zip" "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\*"
echo Done!

copy "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\scripts\PLR\bat\backup\restore\chrome-restore.bat" "%HOMEPATH%\Desktop\Google-Chrome-Backup\"

pause
