#!/bin/bash -xe

# required to install CHEF !!
#
 
yum install -y gcc automake autoconf libtool make
yum install -y ruby
yum install -y ruby-devel ruby-docs ruby-ri ruby-rdoc
yum install -y rubygems
 
#install chef
gem install chef ruby-shadow --no-ri --no-rdoc
 
#init git
yum install -y git-core
 
