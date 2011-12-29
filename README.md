#RedHat Enterprise Linux Equip
###Super simple setup scripts for RHEL modeled after [Ubuntu Equip](https://github.com/aglover/ubuntu-equip)
 
# 
###Run these scripts on a fresh install of RHEL (I'm using version 6). They'll do the rest. 

These days I use [RHEL's ami-3ddb1954 AMI](http://aws.amazon.com/amis/9559587540682084).

###To install:
  * Ruby 1.9.2
     * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_ruby.sh && bash equip_ruby.sh`
     * you get Ruby 1.9.2 latest patch level, RubyGems, and Bundler
  * Passenger (RHEL already has Apache 2)
     * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_passenger.sh && bash equip_passenger.sh`
     * follow instructions from passenger installer
  * MongoDB
	 * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_mongodb.sh && bash equip_mongodb.sh`
	 * you get latest version of MongoDB
	 * configuration: `etc/mongodb.conf`
  * Java 1.6 setup
	 * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_java.sh && bash equip_java.sh`
	 * you'll need to manually accept Sun's license agreement
	 * you get Sun's Java 6 JDK, JRE, and Apache Ant	
  * Android SDK setup
     * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_android.sh && bash equip_android.sh`
     * you should have Java and Ant already installed		
     * you get all versions of SDK
       * this'll take a long long time and will take up about 3GB of space
  * elasticsearch setup
     * `wget --no-check-certificate https://raw.github.com/aglover/rhel-equip/master/equip_elasticsearch.sh && bash equip_elasticsearch.sh`
     * you will need to have Java installed (see Java 1.6 setup above)
     * you get latest version of elasticsearch and it's installed as a service
     * to start it: `rcelasticsearch start` and to stop: `rcelasticsearch stop`
