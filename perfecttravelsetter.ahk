#NoEnv
#SingleInstance, Force

global settingsDelay = 100

global lowerFOV = 30
global lowerSens = 0




global normalFOV = 90
global normalSens = 85


global diferenceFOV = normalFOV - lowerFOV

global diferenceSens = normalSens - lowerSens


ChangesSettings(){
    Send, {Esc}{Tab 6}{Enter}{Tab}
    Sleep %settingsDelay%
    Send, {Left %diferenceFOV% * 2}
    Send, {Left %diferenceFOV% * 2}
    Sleep 0
    Send, {Tab 6}{Enter}{Tab}{Enter}{Tab}
    Send, {Left %diferenceSens% * 2}
    Send, {Left %diferenceSens% * 2}
    Send, {Esc 3}
    Sleep 6
}

^T::
ChangesSettings()