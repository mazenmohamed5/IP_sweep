#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an ip address"
echo "Syntax: ./your_file_name.sh your_ip_address_of_network"
#Example --> ./ipsweep.sh 192.168.2

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
