rm -rf /opt/cpuminer
mkdir /opt/cpuminer
wget --trust-server-name http://sourceforge.net/projects/cpuminer/files/pooler-cpuminer-2.3.2-linux-x86.tar.gz/download
tar -xvf pooler-cpuminer-2.3.2-linux-x86.tar.gz -C /opt/cpuminer
rm pooler-cpuminer-2.3.2-linux-x86.tar.gz
ln -s /opt/cpuminer/minerd /usr/bin
