#!/bin/sh

#
# RHEL Equip 
#  Redis Equip
# Licence: MIT

# docs
#  http://www.jeremykline.us/?p=209

yum install gcc-c++ make apr-devel apr-util-devel -y
yum install zlib libxml2-devel -y
yum install gcc -y
yum install zlib -y
yum install zlib-devel -y
yum install openssl -y
yum install openssl-devel -y

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable

make 
make test
sudo make install

mkdir /var/lib/redis /etc/redis
wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/redis.conf
mv redis.conf /etc/redis/redis.conf


wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/etc/redis-server
chmod u+x redis-server
mv redis-server /etc/init.d/redis-server

chkconfig --add redis-server
chkconfig redis-server on

mkdir /var/log/redis
touch /var/log/redis/redis.log
