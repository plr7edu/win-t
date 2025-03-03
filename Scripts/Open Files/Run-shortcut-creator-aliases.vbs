currentpath = CreateObject("Scripting.FileSystemObject").GetAbsolutePathName(".")
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & currentpath & "\Run-shortcut-creator-aliases.bat" & Chr(34), 0
Set WshShell = Nothing
