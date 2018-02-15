#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

$WheelLeft:: ; make brown 
Gosub, OpenDialog
Send {Down 2}
Gosub, CloseDialog
return

$XButton1:: ; make support 
Gosub, OpenDialog
Send {Down 5}
Gosub, CloseDialog
return

$XButton2:: ; make support 
Gosub, OpenDialog
Send {Down 10}
Gosub, CloseDialog
return



OpenDialog:
Send {Click 2}
Sleep 50
Send {Tab 6}
Sleep 50
return

CloseDialog:
Sleep 50
Send {Enter}
Sleep 50
Send {Enter}
return



!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return


