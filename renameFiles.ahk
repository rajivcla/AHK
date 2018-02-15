#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;$1:: ; double click and copy
;Send {End}
;Sleep 50
;Send {F2}
;Sleep 50
;Send {Home}
;Sleep 50
;Send {Ctrl Down}
;Send {Shift Down}
;Send {Right 2}
;Sleep 50
;Send {Ctrl Up}
;Send {Shift Up}
;Send {BackSpace}

;return


;$2:: ; double click and copy

;Send {End}
;Sleep 50
;Send {F2}
;Sleep 50
;Send {Left}
;send {Right}
;Send v



;Send {Home}
;Sleep 50
;Send {Ctrl Down}
;Send {Shift Down}
;Send {Right 3}
;Sleep 50
;Send {Ctrl Up}
;Send {Shift Up}
;Send {BackSpace}

;return



$1::
;Send Click
Sleep 150
Send {F2}
Sleep 50
Send ^{c}
return


$2::
;Send Click
Sleep 150
Send {F2}
Sleep 50
Send ^{v}
Sleep 50
Send vp
Sleep 50
Send {Enter}


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



