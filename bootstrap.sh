!/usr/bin/env bash

apt-get install -y python-software-properties 
add-apt-repository -y ppa:ubuntu-toolchain-r/test

apt-get update
apt-get install -y vim
apt-get install -y curl
apt-get install -y git

apt-get install -y gcc-4.8 g++-4.8
update-alternatives --remove-all gcc 
update-alternatives --remove-all g++
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 20
update-alternatives --config gcc
update-alternatives --config g++

curl -s 'http://go.googlecode.com/files/go1.2.1.linux-386.tar.gz' -o /tmp/go.tar.gz
tar -C /usr/local -xzf /tmp/go.tar.gz
export PATH=$PATH:/usr/local/go/bin
