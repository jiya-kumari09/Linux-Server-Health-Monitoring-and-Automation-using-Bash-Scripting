#!/bin/bash

# This script displays system health information.

echo "================================="
echo "       SYSTEM HEALTH INFORMATION"
echo "================================="
echo "Date: $(date)"  #current date and time

echo -e "\n--- CPU Load ---"
uptime                #system running time

echo -e "\n--- Memory Usage ---"
free -h               #memory usage in human-readable format

echo -e "\n--- Disk Usage ---"
df -h                 #disk usage in human-readable format

echo -e "\n--- Top 5 Processes ---"
ps aux --sort=-%mem | head -n 6  #list all processes sorted by memory usage, showing the top 5 lines

echo "================================="