#!/bin/bash

sudo apt-get update

sudo apt-get install git-core -y

sudo apt-get install postgresql-9.5-client



cd /var/canvas

sudo apt-get install software-properties-common -y

yes "" | sudo apt-add-repository ppa:brightbox/ruby-ng

sudo apt-get update

#Ruby and lib package installation
sudo apt-get install ruby2.4 ruby2.4-dev zlib1g-dev libxml2-dev libsqlite3-dev postgresql libpq-dev libxmlsec1-dev curl make g++ -y

#Node Installation
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

#Bundler configuration
sudo gem install bundler --version 1.13.6

sudo chmod 777 -R /var/canvas

bundle install --path vendor/bundle --without=sqlite mysql

#yarn installation
sudo apt-get update

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install yarn

sudo npm install -global yarn@1.5.1

sudo apt-get install python -y

sudo git config --global url."https://".insteadOf git://

sudo yarn install
