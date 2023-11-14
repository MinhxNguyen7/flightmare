# Build, check, and install libsodium
curl https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar -xvf LATEST.tar.gz
gunzip LATEST.tar.gz
cd libsodium-stable
./configure
make && make check 
sudo make install 
sudo ldconfig
cd ../
# Build, check, and install the latest version of ZeroMQ
git clone https://github.com/zeromq/libzmq
cd libzmq
./autogen.sh 
./configure --with-libsodium && make
sudo make install
sudo ldconfig
cd ../
# Now install ZMQPP
git clone https://github.com/zeromq/zmqpp
cd zmqpp
make
make check
sudo make install
make installcheck