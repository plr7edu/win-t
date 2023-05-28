 ::Firefox Restore

@echo off 

IF EXIST "%PROGRAMFILES%\7-Zip\7zFM.exe" (
    GOTO CONTINUE
) ELSE (
    echo Before proceeding, you must install 7z.
    pause
)

:CONTINUE

Echo Librewolf Profiles Restoring...

cd %APPDATA%\librewolf\Profiles\*default-default*\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Librewolf-Backup\Librewolf-Root-Directory-Backup.zip"  

cd %LOCALAPPDATA%\librewolf\Profiles\*default-default*\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Librewolf-Backup\Librewolf-Local-Directory-Backup.zip"

echo Done!

pause
