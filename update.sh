# Check for any updates of Linux
sudo apt-get update
# go to /
cd /
# Run backup of current Working WC System
tar czf backup.$(date +%Y%m%d-%H%M%S).tar.gz Github
# Update WhiteCore-Sim
cd Github/
cd WhiteCore-Dev/
git pull https://github.com/WhiteCoreSim/WhiteCore-Dev.git
./runprebuild.sh
xbuild
