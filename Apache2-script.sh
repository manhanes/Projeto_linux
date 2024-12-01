#!/bin/bash

echo "Update Linux ..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Setup the files ..."

cd /var/www/html
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm -rf main.zip
