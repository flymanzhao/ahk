#!^d::
ControlGet, hWnd, Hwnd,, SysListView321, ahk_class Progman
if (hWnd = "")
{
    ; Here is the trick: 
    ; if you press Win+D, then `ControlGet` fails to get the hWnd,
    ; but a MsgBox can do the trick. I don't know why, but it works!
    ; Let me know if you know why. Thanks!
    MsgBox, 0, "",  "", 0.001
    ControlGet, hWnd, Hwnd,, SysListView321, ahk_class Progman
}

; Toggle between displaying and hiding the desktop icons
if DllCall("IsWindowVisible", UInt, hWnd)
    WinHide, ahk_id %hWnd%
else
    WinShow, ahk_id %hWnd%
return
