#!/bin/sh

#
# RHEL Equip 
#  Java 6 Equip
# Licence: MIT

# docs: 
#  http://jehurst.wordpress.com/2011/01/16/rhel-6-for-the-clueless-sun-java/
#  http://www.if-not-true-then-false.com/2010/install-sun-oracle-java-jdk-jre-7-on-fedora-centos-red-hat-rhel/
#  http://www.java.com/en/download/help/linux_install.xml

wget http://download.oracle.com/otn-pub/java/jdk/6u25-b06/jdk-6u25-linux-i586-rpm.bin
chmod +x jdk-6u25-linux-i586-rpm.bin
sh jdk-6u25-linux-i586-rpm.bin

# when this is done...

/usr/sbin/alternatives --install /usr/bin/java java /usr/java/default/bin/java 20000