#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$XButton2:: ;mouse forward
Send {Click}
Send ^a
Sleep 50
Send ^v
Sleep 50
Send {Enter}
return

$Volume_Up:: ; double click and copy
Send {Click 1}
Sleep 50
Send {BackSpace}
Sleep 50
Send ^v
return

$Volume_Down:: ; double click and copy
Send {Click 3}
Sleep 50
Send ^c
Sleep 50
StringReplace, Clipboard, Clipboard, %A_SPACE%at, %A_SPACE%/, All

return

$!2:: ; click and paste, tab and submit
Send {Click}
Sleep 50
Send ^{v}
Sleep 50
Send {Tab}
Sleep 50
Send {Space}
return

!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return


$!3:: ; double click and copy, then find
Send {Click 2}
Sleep 50
Send ^{c}
Sleep 50
Send ^{f}
Sleep 50
Send ^{v}
return