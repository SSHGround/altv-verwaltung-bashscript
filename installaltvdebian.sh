#!/bin/bash
clear

# Installiere Grundbasis 

sudo apt update -y && sudo apt upgrade -y && sudo apt-get install libc-bin -y && sudo apt-get install libatomic1 -y && sudo apt install wget -y && sudo apt-get install jq -y && sudo apt install curl -y
cd /home
mkdir altvserver && cd /home/altvserver
wget -O 'update.sh' 'https://raw.githubusercontent.com/Lhoerion/altv-serverupdater/master/update.sh'
chmod +x ./update.sh
./update.sh
chmod +x ./altv-server
clear

# Installiere und Konfiguriere AltV Systemd Service
wget https://raw.githubusercontent.com/SSHGround/altv-verwaltung-bashscript/main/altv.service
mv altv.service /lib/systemd/system/
systemctl enable altv.service
clear

#######  FERTIG ######