echo "-----------------------------------------**** Begin installing bochs ****----------------------------------------"

wget https://github.com/bochs-emu/Bochs/archive/refs/tags/REL_2_8_FINAL.tar.gz
tar -zxvf REL_2_8_FINAL.tar.gz -C .
mv Bochs-REL_2_8_FINAL bochs_src
cd bochs_src/bochs
./configure --enable-debugger --enable-iodebug --enable-x86-debugger --with-x --with-x11
make
sudo make install
sudo make unpack_dlx
sudo make install_dlx
cd ~
rm -rf bochs_src
rm REL_2_8_FINAL.tar.gz
echo "-----------------------------------------**** End installing bochs ****----------------------------------------"