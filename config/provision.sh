#!/bin/bash
set -e
#provision.sh
   sudo apt-get -qq update
   sudo apt-get  -qq install -y software-properties-common
   sudo apt-add-repository  -y ppa:ansible/ansible
   sudo apt-get -qq -y update
   sudo apt-get -qq install -y ansible
   #sudo apt-get install python -y
   dpkg -l ansible
   #dpkg -l ansible-playbook