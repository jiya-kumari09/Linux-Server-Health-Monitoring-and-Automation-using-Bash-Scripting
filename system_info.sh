#!/bin/bash

# This script displays system information.

echo "================================="
echo "       SYSTEM INFORMATION"
echo "================================="

echo "Hostname: $(hostname)"  #computer name
echo "User: $(whoami)"        #username

echo -e "\n--- Operating System ---" #OS information
cat /etc/os-release

echo "Kernel: $(uname -r)" #kernel version
echo "Architecture: $(uname -m)" #architecture
echo "Uptime: $(uptime -p)"  #system running time
echo "Date: $(date)"  #current date and time

echo "================================="