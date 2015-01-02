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
