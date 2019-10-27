#!/bin/bash
set -e
#provision.sh
   sudo apt-get -qq -y update
   ## Add github to know_hosts
   ssh-keyscan github.com >> ~/.ssh/known_hosts
   ssh-keyscan 192.30.253.112 >> ~/.ssh/known_hosts #github ip
   sudo apt-get  -qq install -y software-properties-common
   sudo apt-add-repository  -y ppa:ansible/ansible
   sudo apt-get -qq -y update
   sudo apt-get -qq install -y ansible
   #sudo apt-get install python -y
   dpkg -l ansible
   #dpkg -l ansible-playbook