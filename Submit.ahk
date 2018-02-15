;move your mouse next to the submit button and leave it there.
1:: ;option 1
Send {click}
sleep 50
send {tab}
sleep 50
send {space}
return

2:: ;option 2
send {click}
sleep 50
send {tab}
sleep 50
send {down}
return

3:: ;option 3
send {click}
sleep 50
send {tab}
sleep 50
send {down 2}
return

4:: ;option 4
send {click}
sleep 50
send {tab}
sleep 50
send {down 3}
return

5:: ;submit and flip to next tab
send {click}
sleep 50
send {tab 2}
sleep 50
send {enter}
sleep 50
send ^{tab}
return


NumPad4::
send {click 2}
send ^{c}
return

NumPad1::
send ^{c}
return

NumPad2::
send ^{v}
return


