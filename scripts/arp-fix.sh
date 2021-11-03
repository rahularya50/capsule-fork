#!/bin/bash

# A bunch of fixes to handle just honestly stupid things

# Fix ARP with Capsule
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y net-tools
ifconfig
/sbin/arp -i eth4 -s 10.100.1.10 02:00:00:FF:FF:00
/sbin/arp -i eth4 -s 10.100.1.11 02:00:00:FF:FF:01
/sbin/arp -i eth4 -s 10.100.1.12 02:00:00:FF:FF:02

