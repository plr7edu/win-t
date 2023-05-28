::LibreWolf Backup

mkdir %HOMEPATH%\Desktop\Librewolf-Backup\

Echo Librewolf Profiles Backup Zipping...

cd %APPDATA%\librewolf\Profiles\*default-default*\
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Librewolf-Backup\Librewolf-Root-Directory-Backup.zip" 

cd %LOCALAPPDATA%\librewolf\Profiles\*default-default*\
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Librewolf-Backup\Librewolf-Local-Directory-Backup.zip"

copy "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\scripts\PLR\bat\backup\restore\librewolf-restore.bat" "%HOMEPATH%\Desktop\Librewolf-Backup\"

echo Done!

pause
