echo "-----------------------------------------**** Begin installing visual studio code ****----------------------------------------"
#Install the apt repository and signing key to enable auto-updating using the system's package manager

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
echo "-------------------------------------------**** End installing visual studio code ****---------------------------------------"