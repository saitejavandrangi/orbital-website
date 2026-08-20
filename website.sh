#!/bin/bash
URL=https://www.tooplate.com/zip-templates/2167_orbital.zip
SRV=apache2
PKG=apt
FILE=2167_orbital

sudo $PKG update
sudo $PKG install $SRV wget unzip -y
echo "Start & Enabling the Services"
sudo systemctl start $SRV
sudo systemctl enable $SRV
sudo wget $URL 
sudo unzip $FILE
sudo rm -rf /var/www/html/*
sudo cp -r $FILE/* /var/www/html/ 
sudo systemctl restart $SRV
date
