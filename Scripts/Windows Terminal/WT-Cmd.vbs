Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "%HOMEPATH%\Documents\MY-GIT-REPO\win-t\Scripts\Windows Terminal\wt-cmd.bat" & Chr(34), 0
Set WshShell = Nothing
