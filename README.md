#RedHat Enterprise Linux Equip
###Super simple setup scripts for RHEL modeled after [Ubuntu Equip](https://github.com/aglover/ubuntu-equip)
 
# 
###Run these scripts on a fresh install of RHEL (I'm using version 6). They'll do the rest. 

These days I use [RHEL's ami-3ddb1954 AMI](http://aws.amazon.com/amis/9559587540682084).

###To run:
  * Ruby 1.9.2 setup
     * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_ruby.sh && bash equip_ruby.sh`
     * you get Ruby 1.9.2 latest patch level and Bundler
  * Passenger setup
     * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_passenger.sh && bash equip_passenger.sh`