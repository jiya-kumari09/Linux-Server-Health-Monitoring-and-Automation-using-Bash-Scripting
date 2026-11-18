#!/bin/bash

while true  #always true loop to keep the script running until the user chooses to exit
do
    clear #clear the terminal screen for a clean display of the menu
    echo "================================="
    echo "  LINUX ADMINISTRATION TOOLKIT   "
    echo "================================="
    echo "1. System Information"
    echo "2. Health Monitor"
    echo "3. Apache Monitor"
    echo "4. Backup"
    echo "5. View Logs"
    echo "6. Run All Scripts (Full Log)"
    echo "7. Exit"
    echo "================================="
    read -p "Enter your choice [1-7]: " choice

    case $choice in                     # handle user input
        1) ./system_info.sh             # Run system_info.sh
           ;;
        2) ./health_monitor.sh          # Run health_monitor.sh
           ;;
        3) ./apache_monitor.sh          # Run apache_monitor.sh
           ;;
        4) ./backup.sh                  # Run backup.sh
           ;;
        5) cat ./logs/system.log        # Display the contents of the system.log file in the logs directory
           ;;
        6) ./logs.sh                    # Run logs.sh to execute all scripts and save the output to system.log
           ;;
        7) echo "Exiting toolkit..."    # Exit the script
           exit 0
           ;;
        *) echo "Invalid option! Please choose 1-7"   # Handle invalid input by prompting the user to choose a valid option
           ;;
    esac

    echo ""
    read -p "Press Enter to continue..."         # Wait for user input before clearing the screen and displaying the menu again
done