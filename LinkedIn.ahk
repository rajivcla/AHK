#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

1::
SendInput ^c
Sleep 50

clipboard:= RegExReplace(clipboard, "^\s+|\s+$")
replace := {"Name:":"","Company:":""}
For what, with in replace
   StringReplace, clipboard, clipboard, %what%, %with%, All

Loop
{
    StringReplace, clipboard, clipboard, `r`n`r`n, `r`n, UseErrorLevel    none 

    if ErrorLevel = 0  ; No more replacements needed.
        break
}


MyString := clipboard . " twitter.com" 
clipboard.=" linkedin.com"

Sleep 100
SendInput ^t
Sleep 50
SendInput ^v
SendInput {Enter}

Sleep 999


;Send ^1
 
Sleep 300
clipboard := MyString
SendInput ^t
Sleep 50
SendInput ^v
SendInput {Enter}
clipboard =