# Check for any updates of Linux
sudo apt-get update
# Update WhiteCore-Sim
cd /Github/
# Run backup of current Working WC System
tar czf backup.$(date +%Y%m%d-%H%M%S).tar.gz WhiteCore-Dev
cd WhiteCore-Dev/
git pull https://github.com/WhiteCoreSim/WhiteCore-Dev.git
./runprebuild.sh
xbuild
