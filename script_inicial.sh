#!/bin/sh

sudo apt-get update -y
sudo apt-get install virtualbox-6.1 -y
vbox-img --version
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb -y
vagrant --version
vagrant init
vagrant up
vagrant provision
vagrant ssh