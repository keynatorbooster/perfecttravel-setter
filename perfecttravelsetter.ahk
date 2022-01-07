#NoEnv
#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%\

SetKeyDelay, 0  ;;if the macro bugs a lot, try increasing this number, if you want it to be faster, decrease the number


global normalFOV = 90 ;;this will be your usual FOV
global normalSens = 74 ;;this will be your usual mouse sensitivity

;;dont change these
global lowerFOV = 30 
global diferenceFOV = normalFOV - lowerFOV

SetsDownPerfect(){
    Send, {Esc}{Tab 6}{Enter}{Tab}
    Send, {Left 151}
    Send, {Tab 6}{Enter}{Tab}{Enter}{Tab}
    Send, {Left 160}
    Send, {Esc 3}
}

SetsUpPerfect(){
    FOVPresses := ceil((diferenceFOV)*1.763)
    Send, {Esc}{Tab 6}{Enter}{Tab}
    Send, {Right %FOVPresses%}
    Send, {Tab 6}{Enter}{Tab}{Enter}{Tab}
    SensPresses := ceil(normalSens/1.408)
    Send, {Right %SensPresses%}
    Send, {Esc 3}
}


#IfWinActive, Minecraft
{
    ;;fov and sens all the way down hotkey, make it whatever you want
    ^T::
    SetsDownPerfect()
    return

    ;;fov and sens back to normal hotkey, make it whatever you want
    ^+T::
    SetsUpPerfect()
    return
}
