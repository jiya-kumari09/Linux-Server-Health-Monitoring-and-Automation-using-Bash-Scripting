# Linux Administration Toolkit

## About the Project

The Linux Administration Toolkit is a bash-based project for performing common Linux administration tasks from one place.

Instead of running each script separately, this project provides a main menu where user can select and run different tasks.

The main objective of this project is to learn and implement basic Linux commands, bash scripting, system monitoring, backup management, Apache monitoring and log management.


## Features

The toolkit includes the following modules:

1.  System Information
2.  System Health Monitor
3.  Apache Server Monitor
4.  Backup Manager
5.  Log Manager
6.  Run All Scripts
7.  Exit Option

## Project Structure

Linux_Administration_Toolkit/
├── main.sh
├── system_info.sh
├── health_monitor.sh
├── apache_monitor.sh
├── backup.sh
├── logs.sh
├── demo.html
├── README.md
├── backup/      (created after running backup)
└── logs/        (created after running log manager)

## Modules Description

### 1. System Information (system_info.sh)

This script displays basic information about the system, such as:

- Hostname
- Current logged-in user
- Operating System details
- Kernel version
- System architecture
- System uptime
- Current date and time

### 2. Health Monitor (health_monitor.sh)

This script shows the current health and performance of the system:

- CPU load average
- Memory usage
- Disk usage
- Top 5 memory-consuming processes

It helps to quickly check the system performance.

### 3. Apache Server Monitor (apache_monitor.sh)

This script checks whether the Apache server is working properly.

A sample `demo.html` page is hosted on Apache and the script uses `curl` command to check if `http://localhost/demo.html` is reachable.

If reachable, it shows success message, otherwise it shows failure message.

### 4. Backup Manager (backup.sh)

This script creates a compressed backup of important project files.

It takes backup of `demo.html` and all `.sh` scripts and stores it inside the `backup/` directory.

The backup file name contains current date, for example `backup-2026-08-31.tar.gz`.

It uses `tar` command for backup.

### 5. Log Manager (logs.sh)

This script is used to maintain logs of all other scripts.

It runs all scripts and stores their output in `./logs/system.log` with date and time.

This helps to keep a record of script execution for future reference.

### 6. Main Menu (main.sh)

The `main.sh` script is the main file that connects all other scripts.

It displays a menu to the user:

1 -> System Information
2 -> Health Monitor
3 -> Apache Monitor
4 -> Backup
5 -> View Logs
6 -> Run All Scripts (Full Log)
7 -> Exit

The menu runs in a loop until user chooses Exit option.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell Scripting
- Apache2 Web Server
- HTML
- Basic Linux Commands

## Commands Used

`echo, read, hostname, whoami, uname, uptime, free, df, ps, curl, mkdir, tar, date, ls, cat, chmod`

## How to Run the Project

1. Open the project in VS Code.
2. Open Ubuntu terminal and go to project directory.
3. Give execute permission to scripts:

chmod +x *.sh

4. Start the toolkit:

./main.sh