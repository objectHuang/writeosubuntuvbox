#!/bin/bash
echo "---------------------------------------**** Begin installing Ubuntu, etc****-------------------------------------------------"

sudo apt update
sudo apt upgrade -y

echo "-----------------------------------------**** Begin installing ubuntu-desktop ****----------------------------------------"
sudo apt install ubuntu-desktop -y
sudo apt-get remove --purge --auto-remove libreoffice* -y
sudo apt-get remove --purge --auto-remove cheese -y
sudo apt-get purge --auto-remove totem totem-plugins -y
sudo apt-get purge --auto-remove shotwell -y
sudo apt-get purge --auto-remove gnome-todo -y
sudo apt-get purge --auto-remove transmission-gtk -y
sudo apt-get purge --auto-remove usb-creator-gtk -y
sudo apt-get purge --auto-remove gnome-calendar -y
sudo apt-get purge --auto-remove simple-scan -y
sudo apt-get purge --auto-remove gnome-mines -y
sudo apt-get purge --auto-remove gnome-sudoku -y
sudo apt-get purge --auto-remove aisleriot gnome-mahjongg -y
sudo apt purge --autoremove gnome-games -y
sudo apt-get purge --auto-remove thunderbird* -y
sudo apt-get purge --auto-remove byobu* -y
sudo apt clean -y
echo "------------------------------------------**** End installing ubuntu-desktop ****------------------------------------------"

echo "-----------------------------------------**** Begin installing visual code ****----------------------------------------"
#Install the apt repository and signing key to enable auto-updating using the system's package manager
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

#Update the package cache and install the package
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y
echo "------------------------------------------**** End installing visual code ****------------------------------------------"


echo "------------------------------------------**** Begin installing Chrome ****--------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "-------------------------------------------**** End installing Chrome ****---------------------------------------"

echo "-------------------------------------------***** Begin installing Bochs**** --------------------------------------"

echo "-------------------------------------------*****  End installing Bochs****  --------------------------------------"

echo "----------------------------------------**** Begin updating ubuntu desktop setting ****----------------------------------"
sudo systemctl isolate graphical
sudo apt install dconf-editor -y
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36

echo "----------------------------------------**** End updating ubuntu desktop setting ****----------------------------------"

echo "-----------------------------------------**** End installing Ubuntu, etc ****---------------------------------------------------"
sudo reboot