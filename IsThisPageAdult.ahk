#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RButton::
Send {Click}
Loop, 5 {
	Send {Tab 2}
	Sleep 50
	Send {Right}
	Sleep 50
}
return																					


!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return


!LButton::
Send {Click}
Sleep 50
Send {Tab}
Sleep 50
Send {Space}
return


Volume_Up::
Send {Click}
Sleep 50
Send {Tab 2}
Sleep 50
Send {Space}
return




!RButton:: ; how adult is this query
Send {Click}
Loop, 3 {
	Send {Tab 2}
	Sleep 50
	Send {Right}
	Sleep 50
}
Send {Tab 2}
	Sleep 50
Send {Space}
	Sleep 50
Send {Tab}	

return		