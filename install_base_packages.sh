#!/bin/bash

# Arguments check
#if [ $# -ne 2 ]; then
#	echo "Not enough arguments: script [username] [password]";
#	exit;
#else
#	user=$1;
#	password=$2;
#fi

# Get basic packages 
sudo apt-get update -y
sudo apt-get install -y nano git curl software-properties-common php-pear \
	build-essential libmcrypt-dev mysql-client apt-show-versions openssl

# Install php5
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install -y php5.6-fpm php5.6-curl php5.6-mcrypt php5.6-gd \
	php5.6-imagick php5.6-mysql

# Install nginx
sudo add-apt-repository ppa:ondrej/nginx #'deb http://nginx.org/packages/ubuntu/ trusty nginx'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key
sudo apt-get update -y
sudo apt-get install -y nginx

# Move nginx config
sudo mv vhost.conf /etc/nginx/conf.d/default.conf

# Pull git repo

# Create account and login
#sudo adduser --system --home /home/$user --disabled-password --shell /bin/bash $user
#(echo $password; echo $password; ) | sudo passwd $user
#sudo usermod -aG sudo $user
#sudo su - $user