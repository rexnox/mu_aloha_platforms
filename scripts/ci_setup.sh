#!/bin/bash
echo CI Environment Setup.

# Replace APT Source
#sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
#sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

# Install Dependence
#apt -y remove firefox # uninstall firefox before upgradeing.
./build_setup.sh

# Choose python3.11 as default python3.
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 2

# Initialize mu uefi build env
./build_uefi.py --init

pip install --upgrade -r pip-requirements.txt
#source SurfaceDuo/bin/activate
git config --global --add safe.directory '*'

