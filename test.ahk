BreakLoop := 0

^Esc::
while (BreakLoop = 0)
{
    Sleep, 170
    Send, 1
    ;Sleep, 10
    Click
    Sleep, 170
    Send, 2
    ;Sleep, 10
    Click
}
Send, 3
BreakLoop := 0
return

^Tab::
BreakLoop := 1
return

;bean
F8::
Gosub, ^Tab
Send, 9
Click, Right
Gosub, ^Esc
return

;restart
^F12::
Reload
Sleep, 1000
MsgBox, 4
IfMsgBox, Yes, Edit
return
