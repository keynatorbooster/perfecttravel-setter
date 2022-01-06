#NoEnv
#SingleInstance, Force

global lowerFOV = 30
global lowerSens = 0




global normalFOV = 90
global normalSens = 85



ChangesSettings(){
    Send, {Esc}, {Tab}, {Tab}, {Tab}, {Tab}, {Tab}, {Tab}, {Enter}
}

^T::
ChangesSettings()