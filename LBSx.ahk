#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui,+AlwaysOnTop
Gui, Font, s12, Arial

Current_M := "00"
Current_S := "00"

Last_M := "00"
Last_S := "00"

Avg_M := "00"
Avg_S := "00"



Gui, Add, Text, x112 y28 vAvg_Time, %Avg_M%:%Avg_S%
Gui, Add, Text, x112 y0 vAvg, Avg

Gui, Add, Text, x55 y28 vCurrent_Time, %Current_M%:%Current_S%
Gui, Add, Text, x55 y0 vCurrent, Curr
Gui, Add, Text, x3 y28  vLast_Time, %Last_M%:%Last_S%
Gui, Add, Text, x8 y0 vLast, Last
Gui, Show, h60 w155, Stopwatch AlwaysOnTop
Settimer, Stopwatch, 1000
return

Stopwatch:
Total_S += 1
Current_S += 1
if(Current_S > 59) {
    Current_M += 1
    Current_S := "0"
    GuiControl, , Current_Time ,  %Current_M%:%Current_S%
}
               
if(Current_S < 10) {
    if(Current_M < 10 && Current_M > 0) {
        GuiControl, , Current_Time ,  0%Current_M%:0%Current_S%  
    }
    else {
        GuiControl, , Current_Time ,  %Current_M%:0%Current_S%
    }          
}

else {
    if(Current_M < 10 && Current_M > 0) {
        GuiControl, , Current_Time ,  0%Current_M%:%Current_S%  
    }
    else {
        GuiControl, , Current_Time ,  %Current_M%:%Current_S%
    }          
}
return


GuiClose:
GuiEscape:
ExitApp
return



RButton::
Send {Click}
Sleep, 100
Send {Tab}
Sleep 50
Send {Space}


Last_M = %Current_M%
Last_S = %Current_S%
if(Last_S < 10) {
    if(Last_M < 10 && Last_M > 0) {
        GuiControl, , Last_Time ,  0%Last_M%:0%Last_S%  
    }
    else {
        GuiControl, , Last_Time ,  %Last_M%:0%Last_S%
    }          
}
else {
    if(Last_M < 10 && Last_M > 0) {
        GuiControl, , Last_Time ,  0%Last_M%:%Last_S%  
    }
    else {
        GuiControl, , Last_Time ,  %Last_M%:%Last_S%
    }          
}

Current_M := "00"
Current_S := "00"

Total_ct += 1
Avg_S := Total_S/total_ct
GuiControl, , Current_Time ,  %Current_M%:%Current_S%
GuiControl, , Avg_Time ,  %Avg_S%



return

!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return





