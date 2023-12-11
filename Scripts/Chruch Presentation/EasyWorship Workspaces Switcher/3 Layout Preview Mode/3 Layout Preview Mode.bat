@echo off




:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul


:: Copy and Replace 3 Layout Preview Mode Config 

xcopy /y "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\Scripts\Chruch Presentation\EasyWorship Workspaces Switcher\3 Layout Preview Mode\WindowSettings.ini" %APPDATA%\Softouch\Easyworship.v7\Settings\WindowSettings.ini


:: Open EasyWorship7
START C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe
