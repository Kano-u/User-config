#Requires AutoHotkey v2.0.2
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

_Activate(komorebic_cmd, ahk_exe, exe_path) {
    Komorebic(komorebic_cmd)
    Sleep(100)
    If WinExist(ahk_exe)
        WinActivate(ahk_exe)
    else
        Run(exe_path)
}
; Zen
^!+z::_Activate("focus-workspace 1", "ahk_exe zen.exe", "C:\Program Files\Zen Browser\zen.exe")
; VSCode
!c::_Activate("focus-workspace 6", "ahk_exe code.exe", "D:\Software\Normal\VSCode\Code.exe")
; Fork
!f::_Activate("focus-workspace 7", "ahk_exe Fork.exe", "C:\Users\33467\AppData\Local\Fork\current\Fork.exe")
; Obsidian
!d::_Activate("focus-workspace 3", "ahk_exe Obsidian.exe", "C:\Users\33467\AppData\Local\Programs\Obsidian\Obsidian.exe")



!x::Komorebic("close")
!m::Komorebic("minimize")

; Focus windows
!h::Komorebic("focus left")
!j::Komorebic("focus down")
!k::Komorebic("focus up")
!l::Komorebic("focus right")

!+[::Komorebic("cycle-focus previous")
!+]::Komorebic("cycle-focus next")

; Move windows
!+h::Komorebic("move left")
!+j::Komorebic("move down")
!+k::Komorebic("move up")
!+l::Komorebic("move right")

; Stack windows
!Left::Komorebic("stack left")
; !Down::Komorebic("stack down")
!Up::Komorebic("stack up")
!Right::Komorebic("stack right")
!;::Komorebic("unstack")
![::Komorebic("cycle-stack previous")
!]::Komorebic("cycle-stack next")

; Resize
!=::Komorebic("resize-axis horizontal increase")
!-::Komorebic("resize-axis horizontal decrease")
!+=::Komorebic("resize-axis vertical increase")
!+_::Komorebic("resize-axis vertical decrease")

; Manipulate windows
!t::Komorebic("toggle-float")
; !f::Komorebic("toggle-monocle")

; Window manager options
!+r::Komorebic("retile")
!p::Komorebic("toggle-pause")

; Layouts
; !x::Komorebic("flip-layout horizontal")
!y::Komorebic("flip-layout vertical")

; Workspaces
!1::Komorebic("focus-workspace 0")
!2::Komorebic("focus-workspace 1")
!3::Komorebic("focus-workspace 2")
!4::Komorebic("focus-workspace 3")
!5::Komorebic("focus-workspace 4")
!6::Komorebic("focus-workspace 5")
!7::Komorebic("focus-workspace 6")
!8::Komorebic("focus-workspace 7")

; Move windows across workspaces
!+1::Komorebic("move-to-workspace 0")
!+2::Komorebic("move-to-workspace 1")
!+3::Komorebic("move-to-workspace 2")
!+4::Komorebic("move-to-workspace 3")
!+5::Komorebic("move-to-workspace 4")
!+6::Komorebic("move-to-workspace 5")
!+7::Komorebic("move-to-workspace 6")
!+8::Komorebic("move-to-workspace 7")

; 取消鼠标跟随焦点
; 采用的方案：https://komorebi.lgug2z.com/schema#mouse_follows_focus
; 备用方案：https://lgug2z.github.io/komorebi/cli/mouse-follows-focus.html
; Komorebic("mouse-follows-focus disable")