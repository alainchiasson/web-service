#!/bin/bash -xe

# required to install CHEF !!
#
if [ -e bootstrapped ] 
then 
  echo 'Flagged as already boot strapped. Exiting'
  exit 0
fi
 
yum install -y gcc automake autoconf libtool make
yum install -y ruby
yum install -y ruby-devel ruby-docs ruby-ri ruby-rdoc
yum install -y rubygems
 
#install chef
gem install chef ruby-shadow --no-ri --no-rdoc
 
#init git
yum install -y git-core

#Create link to web directory
if [ ! -h /var/www/html/www ] 
then 
  echo 'Creating Link to /vagrant/www'
  ln -s /vagrant/www /var/www/html/
fi

# Touch flag 
touch bootstrapped 
