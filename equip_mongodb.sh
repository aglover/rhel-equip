#!/bin/sh

#
# RHEL Equip 
#  MongoDB Equip
# Licence: MIT

# great directions: http://www.if-not-true-then-false.com/2010/install-mongodb-on-fedora-centos-red-hat-rhel/

wget https://raw.github.com/aglover/rhel-equip/master/etc/32-bit-10gen-mongodb.repo
mv 32-bit-10gen-mongodb.repo /etc/yum.repos.d/10gen-mongodb.repo
yum install mongo-10gen mongo-10gen-server -y

chkconfig --levels 235 mongod on