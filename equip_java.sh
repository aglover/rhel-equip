#!/bin/sh

#
# RHEL Equip 
#  Java 6 Equip
# Licence: MIT

# docs: 
#  http://jehurst.wordpress.com/2011/01/16/rhel-6-for-the-clueless-sun-java/
#  http://www.if-not-true-then-false.com/2010/install-sun-oracle-java-jdk-jre-7-on-fedora-centos-red-hat-rhel/
#  http://www.java.com/en/download/help/linux_install.xml

wget http://javadl.sun.com/webapps/download/AutoDL?BundleId=73133
chmod +x jdk-6u25-linux-i586-rpm.bin
sh jdk-6u25-linux-i586-rpm.bin

# when this is done...

/usr/sbin/alternatives --install /usr/bin/java java /usr/java/default/bin/java 20000
yum install ant.i686 -y

# the java process leaves quite a few rpms around
rm -f sun-*.rpm
rm -f jdk-*.rpm
rm jdk-6u25-linux-i586-rpm.bin
