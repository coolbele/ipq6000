#/bin/bash

sudo apt update
sudo apt install make -y
git clone -b main --single-branch https://github.com/coolbele/v6.git openwrt
cd openwrt
./scripts/feeds update -a && ./scripts/feeds install -a
wget https://raw.githubusercontent.com/ppayjjk/ipq6000/main/pro/.config
make menuconfig
