# Description
This script allows you to perform a ping sweep of your network to extract active IP addresses. Once you have the active IPs, you can perform further scans or other operations.

# Setup and Usage
- Clone the repository to your Linux system: 

1- git clone https://github.com/mazenmohamed5/IP_sweep.git

2- cd IP_sweep

- Grant execution permission to the script:
   
chmod +x ipsweep.sh

- Determine your network IP. Open a terminal and run:
  
ifconfig

Look for the inet address, which will be in the form x.x.x.x.

- run it with your network IP (without the last octet):
  
./ipsweep.sh x.x.x

- Example:
  
./ipsweep.sh 192.168.4

# Nmap Integration
You can save the active IPs to a text file and then use nmap to scan them. Follow these steps:

- Save the active IPs to a text file:
  
./ipsweep.sh 192.168.4 > ips.txt

- Scan the saved IPs using nmap:
  
for ip in $(cat ips.txt); do nmap $ip& done


This script and method provide a simple way to identify and scan active devices on your network.
