; My AHK bindings for use when developing in Windows using Visual Studio.
; A lot of binds in VS are quite fiddly and complicated so I've tried to cut them down as much as possible for myself.

; Designed for Windows + VS
; Required AutoHotKey

SetTitleMatchMode, 2

; Auto format code, this required VS to have a binding for autoformat as Ctrl-K, E
^d::
	Send ^k
	Send e
	return

; Duplicate line or selection
^+d::
	Send +{Home}
	Send ^c
	Send {Right}
	Send {Enter}
	Send ^v
	return

; Switch to chrome
#c::
	if WinExist("Chrome")
	{
		WinActivate
		WinMaximize
	}
	return

; Switch to VS
#v::
	if WinExist("Microsoft Visual Studio")
	{
		WinActivate
		WinMaximize
	}
	return

; Switch to FireFox
#z::
	if WinExist("Firefox")
	{
		WinActivate
		WinMaximize
	}
	return

; Comment out a line or selection
^/::
	Send ^e
	Send c
	return

; Uncomment out a line or selection
^+/::
	Send ^e
	Send u
	return