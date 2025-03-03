#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; Get the current script path for relative paths
CurrentPath := A_ScriptDir

; Create GUI with larger, bold font
Gui, Font, s12 bold
Gui, Color, White
Gui, +LastFound +AlwaysOnTop
Gui, Margin, 20, 20

; Set GUI title
Gui, +LabelMyGui

; Create buttons with proper sizing and positioning
ButtonWidth := 400
ButtonHeight := 50
ButtonSpacing := 20
TotalHeight := 4*ButtonHeight + 3*ButtonSpacing + 60

; Create the buttons
Gui, Add, Button, x20 y20 w%ButtonWidth% h%ButtonHeight% vButton1 gButton1Action, Internet Download Manger Patch Collections
Gui, Add, Button, x20 y+%ButtonSpacing% w%ButtonWidth% h%ButtonHeight% vButton2 gButton2Action, Microsoft Office Activator
Gui, Add, Button, x20 y+%ButtonSpacing% w%ButtonWidth% h%ButtonHeight% vButton3 gButton3Action, Spotify (Spotx)
Gui, Add, Button, x20 y+%ButtonSpacing% w%ButtonWidth% h%ButtonHeight% vButton4 gButton4Action, Windows Activator

; Show GUI centered
Gui, Show, w440 h%TotalHeight%, Patch + Scripts
return

; Button actions simplified - no color change
Button1Action:
    ; Run the program
    Run, %CurrentPath%\Internet Download Manger\IDM Patches Collections.exe
return

Button2Action:
    ; Run the program
    Run, %CurrentPath%\Microsoft Office\Microsoft Office Activator.exe
return

Button3Action:
    ; Run the program
    Run, %CurrentPath%\Spotify\Spotify-Spotx.exe
return

Button4Action:
    ; Run the program
    Run, %CurrentPath%\Windows\Microsoft Activation Scripts (MAS).exe
return

; Handle GUI close
MyGuiClose:
    ExitApp
return