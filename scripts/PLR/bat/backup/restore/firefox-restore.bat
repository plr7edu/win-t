::Firefox Restore

Echo Firefox Profiles Restoring...

cd %APPDATA%\Mozilla\Firefox\Profiles\*default-release*\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Firefox-Backup\Firefox-Root-Directory-Backup.zip"  


cd %LOCALAPPDATA%\Mozilla\Firefox\Profiles\*default-release*\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Firefox-Backup\Firefox-Local-Directory-Backup.zip"

echo Done!

pause
