# Install Mono 4.4
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-complete
# Install MySQL Server
sudo apt-get install mysql-server
# Install Git
sudo apt-get install git-core
cd /
mkdir Github
cd Github/
git clone https://github.com/WhiteCoreSim/WhiteCore-Dev.git
cd WhiteCore-Dev/
./runprebuild.sh
xbuild
