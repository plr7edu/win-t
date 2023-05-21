echo on

Echo Create Need Folders...
mkdir %HOMEPATH%\Desktop\Backup-Application-Data\
mkdir %HOMEPATH%\Desktop\Backup-Application-Data\Firefox\ %HOMEPATH%\Desktop\Backup-Application-Data\Google-Chrome\ %HOMEPATH%\Desktop\Backup-Application-Data\Joplin\
mkdir %HOMEPATH%\Desktop\Backup-Application-Data\Google-Chrome\Default-Profile\ %HOMEPATH%\Backup-Application-Data\Google-Chrome\Gaming-Profile\

::Firefox
Echo Firefox Profile Backup Zipping...
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Firefox\Firefox-Root-Backup.zip" "%APPDATA%\Mozilla\Firefox\Profiles\*"
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Firefox\Firefox-Local-Backup.zip" "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*"
echo Done!

::Google Chrome
Echo Google Chrome Default Profile Backup Zipping...
"%HOMEPATH%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Google-Chrome\Default-Profile\Google-Chrome-Default-Profile-Backup.zip" "%LOCALAPPDATA%\Google\Chrome\User Data\Default\*"
echo Done!

Echo Google Chrome Gaming Profile Backup Zipping...
"%HOMEPATH%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Backup-Application-Data\Google-Chrome\Gaming-Profile\Google-Chrome-Gaming-Profile-Backup.zip" "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 1\*"
echo Done!

::Joplin
Echo Joplin Data Backup Zipping...
"%PROGRAMFILES%\7-Zip\7z.exe" a -tzip "%HOMEPATH%\Desktop\Backup-Application-Data\Joplin\Joplin-Data-Backup.zip" "%HOMEPATH%\.config\joplin-desktop\*"
echo Done!

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
