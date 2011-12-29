#!/bin/sh

#
# RHEL Equip 
#  Android Equip
# Licence: MIT

wget --no-check-certificate http://dl.google.com/android/android-sdk_r16-linux.tgz

gunzip ./android-sdk_r16-linux.tgz
tar xvf ./android-sdk_r16-linux.tar
./android-sdk-linux/tools/android update sdk --no-ui