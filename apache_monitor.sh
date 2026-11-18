#!/bin/bash
 
#This script checks the status of the Apache server and displays whether it is running or down.

echo "================================="
echo "       APACHE SERVER MONITOR"
echo "================================="

curl -s http://localhost/demo.html > /dev/null  # Check if the demo page is accessible & discards the output
if [ $? -eq 0 ]; then
  echo "Server is alright, site is loading!"  #if the exit status of the previous command is 0, it means the server is running fine
else
  echo "Server is DOWN, site is not loading!" #if the exit status of the previous command is not 0, it means the server is down
fi
echo "================================="
