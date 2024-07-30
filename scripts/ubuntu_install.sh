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