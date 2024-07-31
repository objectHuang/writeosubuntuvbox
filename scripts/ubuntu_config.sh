echo "----------------------------------------**** Begin updating ubuntu desktop setting ****----------------------------------"
sudo systemctl isolate graphical
sudo apt install dconf-editor -y
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'org.gnome.Terminal.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'google-chrome.desktop']"


echo "----------------------------------------**** End updating ubuntu desktop setting ****----------------------------------"

echo "-----------------------------------------**** End installing Ubuntu, etc ****---------------------------------------------------"
sudo reboot