#!/bin/bash

# Updates
apt-get -y update
apt-get -y upgrade

# CTF-Platform Dependencies
apt-get -y install python3-pip
apt-get -y install nginx
apt-get -y install mongodb
apt-get -y install gunicorn
apt-get -y install git
apt-get -y install libzmq-dev
apt-get -y install nodejs-legacy
apt-get -y install npm
apt-get -y install libclosure-compiler-java
apt-get -y install ruby-dev
apt-get -y install dos2unix
apt-get -y install tmux
apt-get -y install openjdk-7-jdk

npm install -g coffee-script
npm install -g coffeebar
npm install -g react-tools
npm install -g jsxhint
npm install -g jsonlint
npm install -g lessc

pip3 install -r api/requirements.txt

gem install jekyll
gem install octopress-minify-html

# Configure Environment
echo 'PATH=$PATH:/home/easyctf/easyctf' >> /etc/profile

# Configure Nginx
cp ctf.nginx /etc/nginx/sites-enabled/ctf
rm /etc/nginx/sites-enabled/default
mkdir -p /srv/http/ctf
service nginx restart