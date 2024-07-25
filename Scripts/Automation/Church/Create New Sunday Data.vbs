Set oShell = CreateObject("WScript.Shell")
oShell.Run("""C:\windows\explorer.exe""")
WScript.Sleep 1000
oShell.AppActivate "Explorer"
WScript.Sleep 500
oShell.SendKeys "%d"
WScript.Sleep 300
oShell.SendKeys "D:\CHRUCH\Chruch Presentation Folder\2 - Upcoming Masses"
WScript.Sleep 300
oShell.SendKeys "{ENTER}"
WScript.Sleep 500
oShell.SendKeys "^t"
WScript.Sleep 300
oShell.SendKeys "%d"
WScript.Sleep 300
oShell.SendKeys "D:\CHRUCH\Chruch Presentation Folder\2 - Upcoming Masses\Bible Reading Photos\Bible Reading"
WScript.Sleep 300
oShell.SendKeys "{ENTER}"
WScript.Sleep 500
oShell.SendKeys "^t"
WScript.Sleep 300
oShell.SendKeys "%d"
WScript.Sleep 300
oShell.SendKeys "C:\Users\player-1\Documents\Wsa-Share"
WScript.Sleep 300
oShell.SendKeys "{ENTER}"


Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "%HOMEPATH%\Documents\Windows-Git-Repos\win-t\Scripts\Wsa\Mixplorer.bat" & Chr(34), 0
Set WshShell = Nothing


