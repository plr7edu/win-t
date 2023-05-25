::Joplin Restore

Echo Joplin Restoring...

cd %HOMEPATH%
rd /s /q .config
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Joplin-Backup\Joplin-Data-Backup.zip"  

cd %APPDATA%
rd /s /q Joplin
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Joplin-Backup\Joplin-Config-Backup.zip"

echo Done!

pause
