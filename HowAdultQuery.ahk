#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RButton::
Send {Click}
Sleep, 100
Loop 3
{
	Send {Tab 2}
	Sleep, 100
	Send {Right}
	Sleep, 100
}

Send {Tab 2}
Sleep 50
Send {Space}
Sleep 50
Send {Tab}

return

!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return