Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "%HOMEPATH%\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\Sunday-Data.bat" & Chr(34), 0
WshShell.Run chr(34) & "%HOMEPATH%\Documents\Windows-Git-Repos\win-t\Scripts\Automation\Church\kanata_config\start-kanata.bat" & Chr(34), 0
Set WshShell = Nothing
