::All Application Data Backup

echo on

Echo Create Need Folders...
mkdir %HOMEPATH%\Desktop\Backup-Application-Data\
mkdir %HOMEPATH%\Desktop\Backup-Application-Data\Firefox\ %HOMEPATH%\Desktop\Backup-Application-Data\Joplin\

Echo Firefox Profile Backup Zipping ... 
::Firefox
cd %APPDATA%\Mozilla\Firefox\Profiles\*default-release*\
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Firefox\Firefox-Root-Directory-Backup.zip" 

cd %LOCALAPPDATA%\Mozilla\Firefox\Profiles\*default-release*\
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Firefox\Firefox-Local-Directory-Backup.zip"

Echo Joplin Backup Zipping ...
::Joplin
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Joplin\Joplin-Data-Backup.zip" "%HOMEPATH%\.config\"
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Joplin\Joplin-Config-Backup.zip" "%APPDATA%\joplin\"

copy "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\scripts\PLR\bat\backup\restore\all-restore.bat" "%HOMEPATH%\Desktop\Backup-Application-Data\"

cd %HOMEPATH%\Desktop\Backup-Application-Data\

@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%"
::echo datestamp: "%datestamp%"
::echo timestamp: "%timestamp%"
::echo fullstamp: "%fullstamp%"

type nul > Backup-Time_%fullstamp%.txt

pause

