apt update && apt upgrade
clear 
pkg upgrade -q -y
clear 
apt install nodejs --fix-missing -qq -yy
clear 
npm install chalk
clear
pkg install git -qq -y
clear 
git clone https://github.com/Ber4tbey/WhatsOwen -q
cd WhatsOwen
clear
npm install @adiwajshing/baileys@3.4.1
clear
node qr.js
