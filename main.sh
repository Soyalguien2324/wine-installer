#!/bin/bash
clear
echo "Espera por favor..."
cd
rm "winehq.key"
sudo apt update -y &>/dev/null
sudo apt upgrade -y &>/dev/null
sudo apt remove -y *wine wine &>/dev/null
sudo apt remove -y wine* &>/dev/null
sudo apt remove -y *wine* &>/dev/null
wget -nc https://dl.winehq.org/wine-builds/winehq.key &>/dev/null
sudo apt install wine -y &>/dev/null
echo "Parte 1/6.- Hecha!"
echo "Espera por favor..."
bash -c 'sudo apt-key add winehq.key' &>/dev/null
echo "Parte 3/6 - Hecha!"
bash -c 'echo "deb https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee /etc/apt/sources.list.d/wine_chrome_os_made_simple.list' &>/dev/null
sudo dpkg --add-architecture i386
sudo apt update -y &>/dev/null
sudo apt install -y wine32 &>/dev/null
echo "Parte 4/6 - Hecha!"
echo "Espera por favor..."
sudo apt update -y &>/dev/null
sudo apt upgrade -y &>/dev/null
echo "Parte 5/6 - Hecha!"
winecfg
echo "6/6 hecho!"
echo "Ya tienes wine o windows"
wine "$HOME/SteamSetup.exe"