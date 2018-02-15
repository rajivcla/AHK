#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui,+AlwaysOnTop
Gui, Font, s12, Arial

Current_M := "00"
Current_S := "00"

Last_M := "00"
Last_S := "00"

Avg_M := "00"
Avg_S := "00"

Total_ct := 000


Gui, Add, Text, x112 y28 vAvg_Time, %Avg_M%:%Avg_S%
Gui, Add, Text, x112 y0 vAvg, %Total_ct%

Gui, Add, Text, x55 y28 vCurrent_Time, %Current_M%:%Current_S%
Gui, Add, Text, x55 y0 vCurrent, Curr
Gui, Add, Text, x3 y28  vLast_Time, %Last_M%:%Last_S%
Gui, Add, Text, x8 y0 vLast, Last
Gui, Show, h60 w175, Stopwatch AlwaysOnTop
Settimer, Stopwatch, 1000

winX = 77
winY = 365

winHeight = 900
winWidth = 800
IfWinExist, ahk_class IEFrame
{
    WinActivate, ahk_class IEFrame
    WinGetPos, , , winWidth, winHeight,
}

return    

!s:: ;Suspend
Suspend
    if (A_IsSuspended)
        MsgBox, Hotkeys have been suspended
    else
        MsgBox, All hotkeys are now active!
return

PGUP::
Send {Click 1}
sleep 200
MouseGetPos, xpos, ypos 
MouseClick, left,,, 1, 0, D  ; Hold down the left mouse button.
MouseMove, xpos + 150, ypos + 30
MouseClick, left,,, 1, 0, U  ; Release the mouse button.
Sleep 50
Send ^c

Sleep 50
str := Clipboard
Sleep 50

Pos=1
While Pos:= RegexMatch(str,"nn([0-9]+)",m,Pos)
{ 
    str := StrReplace(str,m,StrReplace(m,"nn"))
}
if StrLen(str) > 0{
    clipboard:= str
}

WinActivate, ahk_class Chrome_WidgetWin_1
Sleep 50
Send ^l
sleep 50

Send ^v
Sleep 50
Send {Enter}
return


Stopwatch:
Total_S += 1
Current_S += 1
if(Current_S > 59) {
    Current_M += 1
    Current_S := "0"
    GuiControl, , Current_Time ,  %Current_M%:%Current_S%
}
               
if(Current_S < 10) {
    if(Current_M < 10 && Current_M > 0) {
        GuiControl, , Current_Time ,  0%Current_M%:0%Current_S%  
    }
    else {
        GuiControl, , Current_Time ,  %Current_M%:0%Current_S%
    }          
}

else {
    if(Current_M < 10 && Current_M > 0) {
        GuiControl, , Current_Time ,  0%Current_M%:%Current_S%  
    }
    else {
        GuiControl, , Current_Time ,  %Current_M%:%Current_S%
    }          
}
return


GuiClose:
GuiEscape:
ExitApp
return

#IfWinActive, ahk_class IEFrame
^RButton::
MouseGetPos, winX, winY 
MsgBox, The active window is at %winX%`,%winY%
return



#IfWinActive, ahk_class IEFrame
RButton::
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
e::
MouseMove, winX, winY
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
g::
MouseMove, winX, winY + 20
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
f::
MouseMove, winX, winY + 40
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
b::
MouseMove, winX, winY + 60
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
n::
MouseMove, winX, winY + 80
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
a::
MouseMove, winX, winY + 100
gosub, ClickAndSend
return

#IfWinActive, ahk_class IEFrame
q::
MouseMove, winWidth/2+150, winHeight - 70
Send {Click}
return

ClickAndSend:
Send {Click}
Sleep, 100
Send {Tab}
Sleep 50
;Send {Space}


Last_M = %Current_M%
Last_S = %Current_S%
if(Last_S < 10) {
    if(Last_M < 10 && Last_M > 0) {
        GuiControl, , Last_Time ,  0%Last_M%:0%Last_S%  
    }
    else {
        GuiControl, , Last_Time ,  %Last_M%:0%Last_S%
    }          
}
else {
    if(Last_M < 10 && Last_M > 0) {
        GuiControl, , Last_Time ,  0%Last_M%:%Last_S%  
    }
    else {
        GuiControl, , Last_Time ,  %Last_M%:%Last_S%
    }          
}

Current_M := "00"
Current_S := "00"                
             
Total_ct += 1
Avg_S := Total_S/Total_ct
GuiControl, , Current_Time ,  %Current_M%:%Current_S%
GuiControl, , Avg_Time ,  %Avg_S%                
GuiControl, , Avg,  %Total_ct%



return




TestIE:

;pwb := COM_CreateObject("InternetExplorer.Application")
;COM_Invoke(pwb , "Visible=", "True") ;"False" ;"True" ;
;url:="https://prod.uhrs.playmsn.com/Judge/Views/judge?hitappid=15754&mode=judge&toolbar=false&g=1&fromHitApp=1"
;COM_Invoke(pwb, "Navigate", url)
;while pwb.ReadyState != 4
;    Sleep 100;;
;
;query = pwb.document.getElementById('queryId').textContent
;keyword = pwb.document.getElementById('keywordId').textContent;;
;
;if(pwb.localStorage.getItem(query) == null) pwb.localStorage.setItem(query)
;else MsgBox, SPAM!
    
;if(pwb.localStorage.getItem(keyword) == null) pwb.localStorage.setItem(keyword)
;else MsgBox, SPAM!



return


