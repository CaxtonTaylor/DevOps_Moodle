#!/bin/bash
set -e
#provision.sh
   sudo apt-get -qq install -y software-properties-common
   sudo apt-add-repository  -y ppa:ansible/ansible
   sudo apt-get -qq -y update
   sudo apt-get -qq install -y ansible
   dpkg -l ansible