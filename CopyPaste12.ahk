#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$1:: ; double click and copy
Send {Click 2}
Sleep 50
Send ^{c}
return

;$2:: ; click and paste, tab and submit
;Send {Click}
;Sleep 50
;Send ^{v}
;Sleep 50
;Send {Tab}
;Sleep 50
;Send {Space}
;return

!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return


;$3:: ; double click and copy, then find
;Send {Click 2}
;Sleep 50
;Send ^{c}
;Sleep 50
;Send ^{f}
;Sleep 50
;Send ^{v}
;return

;$4::
;Send {Click}
;Sleep 50
;return

$PGUP:: 
Send ^{c}
return

$PGDN:: 
Send {Click}
Send ^{v}
return
