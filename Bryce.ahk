; Instructions:
; --------------
; Simply hover over each seperate entity and press the
; specified hotkey. Remember to click once between each
; thing or else it will try to highlight everything.
; ---------------
; Hotkeys:
; 1 = Copy First Name
; 2 = Copy Last Name
; 3 = Copy Business Title
; 4 = Copy Email Address
; Ctrl + 1 = Paste in fields
; -----------------


1::
send {click 2}
Send ^c
ClipWait
Sleep 50
clipboard:= RegExReplace(clipboard, "^\s+|\s+$")
field1:=clipboard
return

2::
send {click 2}
Send ^c
ClipWait
Sleep 50
clipboard:= RegExReplace(clipboard, "^\s+|\s+$")
field2:=clipboard
return


3::
send {click 2}
Send ^c
ClipWait
Sleep 50
clipboard:= RegExReplace(clipboard, "^\s+|\s+$")
field3:=clipboard
return

4::
send {click right}
Sleep 100
Send {down}
Sleep 50
Send e
Sleep 50
clipboard:= RegExReplace(clipboard, "^\s+|\s+$")
field4:=clipboard
return



^1::
if StrLen(field1) > 0
{
clipboard:= field1
Sleep 100
Send ^v
Sleep 25
field1:=field1default
}
Sleep 100
Send {tab}

if StrLen(field2) > 0
{
clipboard:= field2
Sleep 100
Send ^v
Sleep 25
field2:=field2default
}

Sleep 100
Send {tab}

if StrLen(field3) > 0
{
clipboard:= field3
Sleep 100
Send ^v
Sleep 25
field3:=field3default
}

Sleep 100
Send {tab}

if StrLen(field4) > 0
{
clipboard:= field4
Sleep 100
Send ^v
Sleep 25
field4:=field4default
}
return




esc::
exitapp