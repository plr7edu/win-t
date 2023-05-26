::All Application Data Restore

@echo off 

IF EXIST "%PROGRAMFILES%\7-Zip\7zFM.exe" (
    GOTO CONTINUE
) ELSE (
    echo Before proceeding, you must install 7z.
    pause
)

:CONTINUE

Echo Firefox Restoring...

::Firefox
cd %APPDATA%\Mozilla\Firefox\Profiles\*default-release*\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Backup-Application-Data\Firefox\Firefox-Root-Directory-Backup.zip" 

cd %LOCALAPPDATA%\Mozilla\Firefox\Profiles\*default-release*\
del /Q * & rd /s /q . 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Backup-Application-Data\Firefox\Firefox-Local-Directory-Backup.zip"


Echo Joplin Restoring...

::Joplin
cd %HOMEPATH%
rd /s /q .config
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Backup-Application-Data\Joplin\Joplin-Data-Backup.zip"

cd %APPDATA%
rd /s /q Joplin
"%PROGRAMFILES%\7-Zip\7z.exe" x "%HOMEPATH%\Desktop\Backup-Application-Data\Joplin\Joplin-Config-Backup.zip


pause
