GTAfarmer:
	CoordMode tooltip, screen
	GTAfarmerFunc()
return
CoordMode tooltip, screen
GTAfarmerText(text) {
  		tooltip %text%, A_ScreenWidth/2 -100, 0, 10
	}
GTAfarmerFunc() {
		sleep, 1500
		GTAfarmerText("-GTA Farmer-`nF8 = Bot Neustarten`nF10 = Sammeln/Verarbeiten`nF11 = Verkaufen`nF12 = EXIT")
}

*f10::
    toggle := !toggle
    if (toggle) {
        SetTimer, Spam_Key, 1
		GTAfarmerText("-GTA Farmer-`n`nSammeln ist AKTIV`n`nF10 zum STOPPEN")
    } else {
        SetTimer, Spam_Key, Off
		GTAfarmerText("-GTA Farmer-`nF8 = Bot Neustarten`nF10 = Sammeln/Verarbeiten`nF11 = Verkaufen`nF12 = EXIT")
    }
return

Spam_Key:
	SendInput {e Down}
	sleep, 25
	SendInput {e Up}
return

*f11::
    toggle := !toggle
    if (toggle) {
        SetTimer, Spam_Key2, 1
		GTAfarmerText("-GTA Farmer-`n`nVerkaufen ist AKTIV`n`nF11 zum STOPPEN")
    } else {
        SetTimer, Spam_Key2, Off
		GTAfarmerText("-GTA Farmer-`nF8 = Bot Neustarten`nF10 = Sammeln/Verarbeiten`nF11 = Verkaufen`nF12 = EXIT")
    }
return

Spam_Key2:
	SendInput {Enter Down}
	sleep, 25
	SendInput {Enter Up}
return

F8::
CoordMode tooltip, screen
reloadtext(text) {
  		tooltip %text%, A_ScreenWidth/2 -100, A_ScreenHeight/2 -100, 10
	}
	reloadtext("-GTA Farmer-`n`nRELOADING GTA BOT`n`nMade by Katze/Kiwi^<3")
	Sleep 2500
	Reload
return

f12::
ExitApp