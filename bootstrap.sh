#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y --only-upgrade wget openssl libssl-dev
sudo apt-get install -y make libsqlite3-dev

cd /home/vagrant/

wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz
tar -xvf Python-3.6.5.tar.xz
cd Python-3.6.5
./configure --enable-loadable-sqlite-extensions
make
sudo make install
sudo rm -rf /home/vagrant/Python-3.6.5
sudo rm /home/vagrant/Python-3.6.5.tar.xz

