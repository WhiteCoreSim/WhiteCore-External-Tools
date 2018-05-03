# Check for any updates of Linux
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
# Update WhiteCore-Sim
cd /
cd Github/
cd WhiteCore-Dev/
git submodule update --recursive --remote
./runprebuild.sh
xbuild