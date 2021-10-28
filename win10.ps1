Write-Output("@WhatsOwen")
Write-Output("Scoop Yükleniyor...")
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
Write-Output("Gereklilikler yükleniyor...")
scoop update
scoop install nodejs --global
scoop install git

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Write-Output("WhatsOwen Yükleniyor...")

git clone https://github.com/ByMisakiMey/WhatsSiri
Set-Location WhatsSiri
npm install @adiwajshing/baileys
npm install chalk
node qr.js
