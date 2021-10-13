#!/bin/bash

# Latest versions virtualbox-vbguest have bugs
# Just install latest guest additions to be sure
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y virtualbox-guest-utils
