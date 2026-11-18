#!/bin/bash

LOG_DIR="./logs"  #store logs in a directory named 'logs' in the current directory
LOG_FILE="$LOG_DIR/system.log" #log file path

mkdir -p "$LOG_DIR" #creates the logs directory if it doesn't exist, if present it will not throw an error

echo "=================================" | tee -a "$LOG_FILE" # Print header
echo "SYSTEM LOG - $(date)" | tee -a "$LOG_FILE"  # Print timestamp and append to log file
echo "=================================" | tee -a "$LOG_FILE"

{
echo ""
echo "--- Running system_info.sh ---"
bash system_info.sh # Run system_info.sh and append output to log file

echo ""
echo "--- Running health_monitor.sh ---"
bash health_monitor.sh # Run health_monitor.sh and append output to log file

echo ""
echo "--- Running apache_monitor.sh ---"
bash apache_monitor.sh # Run apache_monitor.sh and append output to log file

echo ""
echo "--- Running backup.sh ---"
bash backup.sh # Run backup.sh and append output to log file

} >> "$LOG_FILE" 2>&1 # append both output and errors to the log file

echo ""
echo "Log saved successfully!"
echo "Location: $LOG_FILE"  # Print the location of the saved log file