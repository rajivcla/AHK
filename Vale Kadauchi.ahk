#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Gui,+AlwaysOnTop
Gui, Font, s18, Arial

Current_M := "00"
Current_S := "00"

Last_M := "00"
Last_S := "00"


Gui, Add, Text, x82 y28 vCurrent_Time, %Current_M%:%Current_S%
Gui, Add, Text, x70 y0 vCurrent, Current
Gui, Add, Text, x3 y28  vLast_Time, %Last_M%:%Last_S%
Gui, Add, Text, x8 y0 vLast, Last
Gui, Show, h60 w155, Stopwatch AlwaysOnTop
Settimer, Stopwatch, 1000
return

Stopwatch:
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



LButton::
send {click}
Sleep, 10
Send {Tab}
Sleep, 10
Send {Space}
Sleep, 10
Send {Enter}
Sleep, 10
Send ^{Tab}
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
GuiControl, , Current_Time ,  %Current_M%:%Current_S%
sleep 200
MouseGetPos, xpos, ypos
MouseClick, left, 762, 485
MouseMove, %xpos%, %ypos% 
return

RButton::
Send {Click}
Sleep, 10
Send {Tab}
Sleep, 10
Send {Down}
Sleep, 10
Send {Enter}
Sleep, 10
Send ^{Tab}
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
GuiControl, , Current_Time ,  %Current_M%:%Current_S%
sleep 200
MouseGetPos, xpos, ypos
MouseClick, left, 762, 485
MouseMove, %xpos%, %ypos%
return
MButton::
Send {Click}
Sleep, 10
Send {Tab}
Sleep, 10
Send {Down 2}
Sleep, 10
Send {Enter}
Sleep, 10
Send ^{Tab}
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
GuiControl, , Current_Time ,  %Current_M%:%Current_S%
sleep 200
MouseGetPos, xpos, ypos
MouseClick, left, 762, 485
MouseMove, %xpos%, %ypos%
return



!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return