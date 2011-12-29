#!/bin/sh

#
# RHEL Equip 
#  elasticsearch Equip
# Licence: MIT

# docs:
#  http://www.elasticsearch.org/tutorials/2010/07/01/setting-up-elasticsearch.html

curl -OL https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-0.18.6.zip
unzip elasticsearch-* && rm -f elasticsearch-*.zip
mv elasticsearch-0.18.6/ elasticsearch/

curl -L http://github.com/elasticsearch/elasticsearch-servicewrapper/tarball/master | tar -xz
mv *servicewrapper*/service elasticsearch/bin/
rm -Rf *servicewrapper*                 

elasticsearch/bin/service/elasticsearch install

# Set up rcelasticsearch as a shortcut to the service wrapper:
ln -s `readlink -f elasticsearch/bin/service/elasticsearch` /usr/local/bin/rcelasticsearch

# rcelasticsearch start
# rcelasticsearch stop
