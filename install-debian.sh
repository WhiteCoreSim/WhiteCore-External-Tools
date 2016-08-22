
# Install Mono 4.4
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
echo "deb http://download.mono-project.com/repo/debian wheezy-libjpeg62-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list
apt-get update
apt-get dist-upgrade
apt-get install mono-complete
# Install MariaDB Server
apt-get install mariadb-server
# Install Git
apt-get install git
cd /
mkdir Github
cd Github/
git clone https://github.com/WhiteCoreSim/WhiteCore-Dev.git
cd WhiteCore-Dev/
./runprebuild.sh
xbuild
