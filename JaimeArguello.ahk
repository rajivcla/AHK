#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

1::
Send {Click 2}
sleep 50
Send ^c
sleep 50
Send ^w
sleep 50
Send {Tab}
Send ^v
sleep 50
Send {Tab}
sleep 50
Send {Space}
sleep 500
Send {Tab 5}
sleep 50
Send {Space}
sleep 3000
Send {Tab 23}
sleep 100
Send {Space}
return
