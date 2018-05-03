#!/bin/bash
# Install Mono 5.10.1 Stable (5.10.1.47)
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt install apt-transport-https
echo "deb https://download.mono-project.com/repo/ubuntu stable-xenial main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install mono-complete
# Install MariaDB Server
sudo apt-get install mariadb-server
# Install Git
sudo apt-get install git
# Install WhiteCore
cd /
mkdir Github
cd Github/
git clone --recursive https://github.com/WhiteCoreSim/WhiteCore-Dev.git
cd WhiteCore-Dev/
./runprebuild.sh
xbuild