echo "------------------------------------------**** Begin installing Chrome ****--------------------------------------"
ls sharefolder/ | 
grep ^google-chrome-stable &> /dev/null || 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P sharefolder/
sudo dpkg -i sharefolder/google-chrome-stable_current_amd64.deb 
echo "-------------------------------------------**** End installing Chrome ****---------------------------------------"