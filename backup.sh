#!/bin/bash

#This script creates a backup of the demo.html file and all .sh scripts in the current directory.

echo "====================================="
echo "          BACKUP MANAGER"
echo "====================================="

mkdir -p backup #creates a backup directory if it doesn't exist,if present it will not throw an error

tar -czf backup/backup-$(date +%Y-%m-%d).tar.gz demo.html *.sh #creates a compressed tar of the demo.html file and all .sh scripts in the current directory, naming it with the current date

if [ $? -eq 0 ]; then
  echo "Backup successful" #if the exit status of the previous command is 0, it means the backup was successful
  ls backup/ #lists the contents of the backup directory to show the newly created backup file
else
  echo "Backup FAILED!" #if the exit status of the previous command is not 0, it means the backup failed
fi

echo "====================================="