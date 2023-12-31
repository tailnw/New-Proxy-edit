apt-get update && apt-get -y upgrade
apt-get install -y build-essential nano
wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/0.8.12.tar.gz
tar xzf 0.8.12.tar.gz
cd 3proxy-0.8.12
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/tailnw/New-Proxy-edit/master/3proxyX.cfg
chmod 600 /etc/3proxy/3proxyX.cfg
mv 3proxyX.cfg 3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/tailnw/New-Proxy-edit/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.githubusercontent.com/tailnw/New-Proxy-edit/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
