#!/bin/bash
#echo "installing npm"
#su root -c "npm install -g npm"
echo "chmod being done"
su root -c "chmod 777 -R /usr/local/lib/node_modules/"
echo "installing luminati"
su root -c "npm install -g luminati-io/luminati-proxy"


