#!/bin/bash

yum -y remove ruby-*
cd /usr/local/src
wget http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p352.tar.bz2
tar jxvf ruby-1.8.7-p352.tar.bz2
cd ruby-1.8.7-p352
./configure
make
make install
cd ..
wget http://production.cf.rubygems.org/rubygems/rubygems-1.8.6.tgz
tar zxvf rubygems-1.8.6.tgz
cd rubygems-1.8.6
ruby setup.rb
ruby -v
gem env
gem install facter puppet

