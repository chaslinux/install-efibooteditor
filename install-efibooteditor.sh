#!/bin/bash

# install-efibooteditor.sh
# chaslinux@gmail.com

sudo apt install build-essential cmake pkg-config qt6-base-dev qt6-base-dev-tools -y
sudo apt install zlib1g-dev libefivar-dev git qt6-tools-dev libefiboot-dev -y

git clone https://github.com/Neverous/efibooteditor

cd efibooteditor

cmake -B build . \
      -DCMAKE_INSTALL_PREFIX=/usr \
      [-Dparameter=value ...]

cmake --build build --config Release


