#!/bin/bash
echo "---------------------------------------**** Begin installing Ubuntu, etc****-------------------------------------------------"

sudo apt update
sudo apt upgrade -y

echo "-----------------------------------------**** Begin installing ubuntu-desktop ****----------------------------------------"
sudo apt-get install --no-install-recommends ubuntu-desktop -y
sudo apt --fix-broken install -y
sudo apt-get install fonts-liberation -y
sudo apt-get install libvulkan1 -y
sudo apt-get install xdg-utils -y
sudo apt-get -y install yaru-theme-icon -y
sudo apt-get -y install yaru-theme-gtk -y
sudo apt-get install build-essential -y
sudo apt-get install xorg-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install g++ -y
sudo apt-get install wget gpg -y
sudo apt install fonts-ubuntu -y
echo "------------------------------------------**** End installing ubuntu-desktop ****------------------------------------------"