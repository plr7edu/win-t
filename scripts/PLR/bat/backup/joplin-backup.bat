::Joplin Backup

mkdir %HOMEPATH%\Desktop\Joplin-Backup\

Echo Joplin Data Backup Zipping...

"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Joplin-Backup\Joplin-Data-Backup.zip" "%HOMEPATH%\.config\"
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Joplin-Backup\Joplin-Config-Backup.zip" "%APPDATA%\joplin\"

copy "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\scripts\PLR\bat\backup\restore\joplin-restore.bat" "%HOMEPATH%\Desktop\Joplin-Backup\"

echo Done!

pause
