function DisplayMenu {
Write-Host @"

--Signal'in En Son Sürümü 6.45.1 Güncellemesi--
Eklenme tarihi: 6.2.2024

KURULAN SÜRÜCÜNÜZÜN HARFİ NEDİR?
Örneğin D,E,F,G bunlardan birisi olabilir.

"@

$MENU = Read-Host "Sürücü harfini yazar mısın?"
Switch ($MENU) {

D {
Start "SGD.bat" -Wait -NoNewWindow
}

E {
Start "SGE.bat" -Wait -NoNewWindow
}

F {
Start "SGF.bat" -Wait -NoNewWindow
}

G {
Start "SGG.bat" -Wait -NoNewWindow
}
default {
#YANLIŞ YAZILIRSA
Write-Host "Geçerli sürücü belirtmedin"
Start-Sleep -Seconds 2
DisplayMenu
}
}
}
DisplayMenu
