#!/bin/sh

#
# RHEL Equip 
#  Apache 2 Passenger Equip
#  http://www.modrails.com/install.html
# Licence: MIT

# To see if you have Apache installed, type:
# 
# $>rpm -q httpd
#  httpd-2.2.3-7.el5.centos
# 
# If not just type:
# 
# $> yum install httpd 
#
# and when the install is done, start apache:
# 
# $> service httpd start
#  Starting httpd: [ OK ]
# 
# The default document root is /var/www/html/

# By default, port 80 isn't open on iptables so add this line to /etc/sysconfig/iptables
# -A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
# then restart things: 
# $> /etc/init.d/iptables restart

# docs:
#  http://mondotech.blogspot.com/2011/10/install-ruby-on-rails-on-rhel-6-with.html

yum install gcc-c++ -y
yum install curl-devel -y
yum install zlib-devel -y
yum install httpd-devel -y
yum install apr-devel -y
yum install apr-util-devel -y

gem install passenger
passenger-install-apache2-module

# update apache config:
#   LoadModule passenger_module /usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.11/ext/apache2/mod_passenger.so
#   PassengerRoot /usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.11
#   PassengerRuby /usr/local/bin/ruby
#
# Deploying a Ruby on Rails application: an example
# 
# Suppose you have a Rails application in /somewhere. Add a virtual host to your
# Apache configuration file and set its DocumentRoot to /somewhere/public:
# 
#    <VirtualHost *:80>
#       ServerName www.yourhost.com
#       DocumentRoot /somewhere/public    # <-- be sure to point to 'public'!
#       <Directory /somewhere/public>
#          AllowOverride all              # <-- relax Apache security settings
#          Options -MultiViews            # <-- MultiViews must be turned off
#       </Directory>
#    </VirtualHost>
#
# /usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.11/doc/Users guide Apache.html

