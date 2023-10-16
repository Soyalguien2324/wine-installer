#!/bin/bash
echo "Espera por favor..."
wget -nc https://dl.winehq.org/wine-builds/winehq.key &>/dev/null
echo "Parte 1/6.- Hecha!"
echo "Espera por favor..."
sudo apt-key add winehq.key
echo "Parte 3/6 - Hecha!"
echo "deb https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee /etc/apt/sources.list.d/wine_chrome_os_made_simple.list
echo "Parte 4/6 - Hecha!"
echo "Espera por favor..."
sudo apt update -y &>/dev/null
sudo apt upgrade -y &>/dev/null
echo "Parte 5/6 - Hecha!"
winecfg &>/dev/null & disown
echo "6/6 hecho!"
clear
echo "Ya tienes wine o windows"
