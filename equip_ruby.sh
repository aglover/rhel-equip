#!/bin/sh

#
# RHEL (RedHat Enterprise Linux) Equip 
#  Ruby Equip
# Licence: MIT

yum install readline-devel -y
yum install gcc zlib libxml2-devel -y
yum install gcc -y
yum install zlib -y
yum install zlib-devel -y
yum install openssl -y
yum install openssl-devel -y

wget ftp://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p180.tar.gz
tar xzf ruby-1.9.2-p180.tar.gz
cd ruby-1.9.2-p180 
./configure 
make 
make install
cd ..
rm -f ruby-1.9.2-p180.tar.gz

# Ruby gems
wget http://rubyforge.org/frs/download.php/75573/rubygems-1.8.12.tgz
gunzip rubygems-1.8.12.tgz 
tar xvf rubygems-1.8.12.tar 
cd rubygems-1.8.12
ruby setup.rb
cd ..
gem install bundler 
rm -f rubygems-1.8.12.tar