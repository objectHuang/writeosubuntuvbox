echo "----------------------------------------**** Begin updating ubuntu desktop setting ****----------------------------------"
sudo systemctl isolate graphical
sudo apt install dconf-editor -y
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36

echo "----------------------------------------**** End updating ubuntu desktop setting ****----------------------------------"

echo "-----------------------------------------**** End installing Ubuntu, etc ****---------------------------------------------------"
sudo reboot