# Check for any updates of Linux
sudo apt-get update
# Update WhiteCore-Sim
cd /
cd Github/
cd WhiteCore-Dev/
git pull https://github.com/WhiteCoreSim/WhiteCore-Dev.git
./runprebuild.sh
xbuild
