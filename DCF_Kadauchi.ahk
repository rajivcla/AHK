#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

hoo = 0

$!1::
;if (hoo = 1){
	hoo = 0
	Clipboard = 
	Send ^c
	Clipwait 1
	sleep 50
	WinActivate, %Win1%
	Sleep, 100
	Send ^v
;}
;else {
	;hoo = 1
    ;sleep 50
	;WinActivate, %Win1%
	;Sleep, 100
	;Send ^v
	;Send ^v
;}
return

$!Numpad1::               
WinGet, WinID, ID, A
WinGetTitle, Title, A
Win1 = ahk_id %WinID%
MsgBox, The window titled "%Title%" has now been set as your MTURK Window.
return


$!LButton::
Send {Click}
sleep 50
Send ^a
sleep 50
send ^v
return