#Persistent
SetTitleMatchMode, 2

SnapActiveWindow(winPlaceVertical, winPlaceHorizontal, winSizeHeight) {
    heightOffset := 7
    widthOffset := 15
    xOffset := 7

    activeWin := WinExist("A")
    activeMon := GetMonitorIndexFromWindow(activeWin)
		WinGet, MinMaxState, MinMax, A
		If (MinMaxState) {
			WinRestore, A
		}

    SysGet, MonitorWorkArea, MonitorWorkArea, %activeMon%

    if (winSizeHeight == "half") {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop)/2 + heightOffset
    } else if (winSizeHeight == "full") {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop) + heightOffset
		} else if (winSizeHeight == "third") {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop)/3
    }

    if (winPlaceHorizontal == "left") {
        posX  := MonitorWorkAreaLeft - xOffset
        width := (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2 + widthOffset
    } else if (winPlaceHorizontal == "right") {
        posX  := MonitorWorkAreaLeft + (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2 - xOffset
        width := (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2 + widthOffset
    } else {
        posX  := MonitorWorkAreaLeft - xOffset
        width := MonitorWorkAreaRight - MonitorWorkAreaLeft + widthOffset
    }

    if (winPlaceVertical == "bottom") {
        posY := MonitorWorkAreaBottom - height + heightOffset
    } else if (winPlaceVertical == "middle") {
        posY := MonitorWorkAreaTop + height
    } else {
        posY := MonitorWorkAreaTop
    }

    WinMove,A,,%posX%,%posY%,%width%,%height%
}

/**
 * GetMonitorIndexFromWindow retrieves the HWND (unique ID) of a given window.
 * @param {Uint} windowHandle
 * @author shinywong
 * @link http://www.autohotkey.com/board/topic/69464-how-to-determine-a-window-is-in-which-monitor/?p=440355
 */
GetMonitorIndexFromWindow(windowHandle) {
    ; Starts with 1.
    monitorIndex := 1

    VarSetCapacity(monitorInfo, 40)
    NumPut(40, monitorInfo)

    if (monitorHandle := DllCall("MonitorFromWindow", "uint", windowHandle, "uint", 0x2))
        && DllCall("GetMonitorInfo", "uint", monitorHandle, "uint", &monitorInfo) {
        monitorLeft   := NumGet(monitorInfo,  4, "Int")
        monitorTop    := NumGet(monitorInfo,  8, "Int")
        monitorRight  := NumGet(monitorInfo, 12, "Int")
        monitorBottom := NumGet(monitorInfo, 16, "Int")
        workLeft      := NumGet(monitorInfo, 20, "Int")
        workTop       := NumGet(monitorInfo, 24, "Int")
        workRight     := NumGet(monitorInfo, 28, "Int")
        workBottom    := NumGet(monitorInfo, 32, "Int")
        isPrimary     := NumGet(monitorInfo, 36, "Int") & 1

        SysGet, monitorCount, MonitorCount

        Loop, %monitorCount% {
            SysGet, tempMon, Monitor, %A_Index%

            ; Compare location to determine the monitor index.
            if ((monitorLeft = tempMonLeft) and (monitorTop = tempMonTop)
                and (monitorRight = tempMonRight) and (monitorBottom = tempMonBottom)) {
                monitorIndex := A_Index
                break
            }
        }
    }

    return %monitorIndex%
}


;Run, explorer.exe "C:\Program Files (x86)\Windows Manager\Cmds"
;WinActivate,

;open File Explorer at C:\Program Files (x86)\Windows Manager\Cmds and snap to the left side
Run, explorer.exe "C:\Program Files (x86)\Windows Manager\Cmds"
WinWaitActive, ahk_class CabinetWClass
SnapActiveWindow("top","left","full")


;open Excel file called "Run_shortcut_creator_aliases.xlsx" and snap to the right side
Run, excel.exe "C:\Users\player-1\Documents\Windows-Git-Repos\win-t\Database\Run_shortcut_creator_aliases.xlsx"
WinWaitActive, ahk_class XLMAIN
SnapActiveWindow("top","right","full")

;Run "RunShortcutCreator"
Run, "C:\Program Files (x86)\Windows Manager\RunShortcutCreator.exe"

ExitApp
