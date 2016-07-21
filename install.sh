# Install Mono 4.4
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-complete
# Install MariaDB Server
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.mirror.triple-it.nl/repo/10.1/ubuntu xenial main'
sudo apt update
sudo apt-get install mariadb-server
# Install Git
sudo apt-get install git-core
cd /
mkdir Github
cd Github/
git clone https://github.com/WhiteCoreSim/WhiteCore-Dev.git
cd WhiteCore-Dev/
./runprebuild.sh
xbuild
