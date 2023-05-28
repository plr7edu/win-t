::Firefox Backup

mkdir %HOMEPATH%\Desktop\Firefox-Backup\

Echo Firefox Profiles Backup Zipping...

cd %APPDATA%\Mozilla\Firefox\Profiles\*default-release*\
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Firefox-Backup\Firefox-Root-Directory-Backup.zip" 

cd %LOCALAPPDATA%\Mozilla\Firefox\Profiles\*default-release*\
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Firefox-Backup\Firefox-Local-Directory-Backup.zip"

copy "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\scripts\PLR\bat\backup\restore\firefox-restore.bat" "%HOMEPATH%\Desktop\Firefox-Backup\"

echo Done!

pause
