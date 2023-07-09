# sudo apt install build-essential check libfl-dev libhwloc-dev libluajit-?-dev libpcre3-dev liblzma-dev 
# libhyperscan-dev libsafec-dev uuid-dev libjemalloc-dev # libunwind-?-dev libtcmalloc-? (libssl-dev libdaq-dev) libpcap-dev #(Suricata)

cd libdaq
./bootstrap
./configure
make
sudo make install

cd libdnet
./configure
make
sudo make install

cd snort3
./configure_cmake.sh
cd build
make -j $(nproc)

sudo make install
/usr/local/snort/bin/snort -V

# https://github.com/shirkdog/pulledpork.git
