#!/bin/bash

install="sudo apt-get -y install `cat pi.pkgs`"

echo
echo "updating packages ..."
sudo apt-get update

echo
echo "upgrading packages ..."
sudo apt-get upgrade

echo
echo "Running: $install"
$install

#git config --global user.name "Adam Wynne"
#git config --global user.email "awynne@gmail.com"
