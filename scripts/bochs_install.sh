echo "-----------------------------------------**** Begin installing bochs ****----------------------------------------"



ls sharefolder/ | 
grep ^REL_2_8_FINAL &> /dev/null || 
wget https://github.com/bochs-emu/Bochs/archive/refs/tags/REL_2_8_FINAL.tar.gz
tar -zxvf REL_2_8_FINAL.tar.gz -C .
mv Bochs-REL_2_8_FINAL bochs_src
cd bochs_src/bochs
./configure --prefix=/home/vagrant/public/bochs --enable-debugger --enable-iodebug --enable-x86-debugger --with-x --with-x11
make
sudo make cd 
cd ~
#rm -rf bochs_src
echo "-----------------------------------------**** End installing bochs ****----------------------------------------"