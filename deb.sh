#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
cd /tmp/
if [ -d Graviton-App ];
then
sudo rm -r Graviton-App
fi
git clone https://github.com/Graviton-Code-Editor/Graviton-App.git
cd Graviton-App
npm install
npm run build:deb
cd dist
sudo apt install ./GravitonEditor_Installer_*

