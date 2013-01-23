#!/bin/sh

#
# RHEL (RedHat Enterprise Linux) Equip 
#  ImageMagick Equip
# Licence: MIT

# http://superuser.com/questions/361435/i-have-compiled-imagemagick-on-my-centos-and-rmagick-wont-install
# http://www.imagemagick.org/script/install-source.php#unix

yum update -y

wget http://www.imagemagick.org/download/ImageMagick.tar.gz

tar xvfz ImageMagick.tar.gz
cd ImageMagick-6.8.1-10/
./configure
make
make install
cd ..

ldconfig /usr/local/lib


#be sure to add export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" to your .bashrc file!

ln -s /usr/local/include/ImageMagick/wand /usr/local/include/wand
ln -s /usr/local/include/ImageMagick/magick /usr/local/include/magick

