#!/usr/bin/bash

# install dependencies
sudo apt-get install libboost1.58-all-dev
sudo apt-get install libqt4-dev
sudo apt-get install flex
sudo apt-get install libz-dev

# build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=RelwithDebInfo ..
make -j$nproc
make install

# install Python interface
cd ..
pip3 install -e .
