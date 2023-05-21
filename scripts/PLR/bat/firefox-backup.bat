::Firefox Backup

Echo Firefox Profile Backup Zipping...

"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Firefox-Root-Directory-Backup.zip" "%APPDATA%\Mozilla\Firefox\Profiles\*"
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Firefox-Local-Directory-Backup.zip" "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*"

echo Done!
