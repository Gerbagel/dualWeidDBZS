BreakLoop := 0

;engage loop
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
BreakLoop := 0
return

;exit loop
^Tab::
BreakLoop := 1
return

;b e a n
F8::
Gosub, ^Tab
Send, 9
Click, Right
Gosub, ^Esc
return

;restart script
^F12::
Reload
Sleep, 1000
MsgBox, 4
IfMsgBox, Yes, Edit
return
