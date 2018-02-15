#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
GenerateRandomString(length = 8) {

characters := "abcdefghijklmnopqurstuvwxyz" 
StringSplit, chars, characters

Loop, %length%
{
   Random, rand, 1, 26
   password .= chars%rand%
}
return password
}


F2::
letters = abcdefghijklmnopqrstuvwxyzaeiou
Loop, 16
{
Send, +{tab}
    Sleep, 10
}


Random rand, 5,10
Word := GenerateRandomString(rand)

;OutputDebug Line %Word%
Clipboard = tinyurl.com/%Word%
;MsgBox %Word%
Sleep, 500
SendInput ^v
Sleep, 500
SendInput {tab}
Random rand,5,25
Clipboard = %rand%
;MsgBox %rand%
SendInput ^v
return
