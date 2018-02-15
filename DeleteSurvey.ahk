#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$1::
Send {Tab 2}
Sleep 50
Send below
Send {Tab}
return

$2::
Send {Tab 2}
Sleep 50
Send above
Send {Tab}
;Sleep 50
;Send {Space}
return

$3::
Send {Tab 2}
Sleep 50
Send lower
Send {Tab}
return

$4::
Send {Tab 2}
Sleep 50
Send higher
Send {Tab}
;Sleep 50
;Send {Space}
return

!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return

