#!/bin/bash
set -e
#provision.sh
   ssh-keyscan github.com >> ~/.ssh/known_hosts
   ssh-keyscan 192.30.253.112 >> ~/.ssh/known_hosts