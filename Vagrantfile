

#vagrant plugin install vagrant-cachier
#sudo apt-get -y install yaru-theme-icon
#sudo apt-get -y install yaru-theme-gtk

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  
  config.vm.define "ubuntu_write_os" do |ubuntu_write_os|

    config.vm.synced_folder "C:\\Users\\Jacob Huang\\Learning\\os\\osvm\\sharefolder", "/home/vagrant/sharefolder", automount: true
      
    config.vm.provider "virtualbox" do |vb|
      vb.name = "Write OS VM"
      vb.memory = "16384"
      vb.cpus = "8"
      vb.customize ['modifyvm', :id, '--graphicscontroller', 'vmsvga']
      vb.customize ['modifyvm', :id, '--vram', '256']
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
      vb.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      #vb.customize ["setextradata", :id, "GUI/ScaleFactor", "2"]
      #vb.customize ["setextradata", :id, "GUI/LastGuestSizeHint", "1920,1080"]
      #vb.customize ["setextradata", :id, "GUI/Fullscreen", "true"]
       
      vb.gui = true
    end
  end
  config.vm.provision "shell", path: "scripts/ubuntu_install.sh", privileged: false
  config.vm.provision "shell", path: "scripts/chrome_install.sh", privileged: false
  config.vm.provision "shell", path: "scripts/vscode_install.sh", privileged: false
  config.vm.provision "shell", path: "scripts/bochs_install.sh", privileged: false
  config.vm.provision "shell", path: "scripts/nasm_install.sh", privileged: false
  config.vm.provision "shell", path: "scripts/sasm_install.sh", privileged: false
  config.vm.provision "shell",path: "scripts/ubuntu_config.sh", privileged: false      
end