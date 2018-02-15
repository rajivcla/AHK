#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 

`::
Send {Click 3}
sleep 50
Send ^c
sleep 100
MyString := Clipboard 
sleep 100
send,{LAlt Down}{Tab}{
sleep 25
send, {LAlt Up}

StringSplit, MyArray, MyString, %A_Space%,

Clipboard = %MyArray1%
Send ^v

Send {Tab}
Sleep, 50

Clipboard = %MyArray2%
Send ^v

MyArray2=

return
