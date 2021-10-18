#!/bin/bash

#-- Hostname
HOST=$(hostname)

#-- Kernel release
KER=$(uname -r)

#-- The number of megabytes of free RAM
FI=$(df -i| grep /dev/xvda1 | awk '{print $2}')

#-- Free number of inodes for the root volume
FM=$(cat /proc/sys/fs/file-max)

#-- Number of open file handles
OF=$(lsof / wc -l)

## ///////////////////////////////////////
# The main loop to generate the log output
while true; do
echo "Hostname: ${HOST} " " Kernel: ${KER}" "  Free_Inodes: ${FI}" "  File Max: ${FM}"  " Files Opened: ${OF}"  " status=okay `date -u`" >> /var/log/logfile.log
echo "Waiting..."
sleep 5
done
## ///////////////////////////////////////
