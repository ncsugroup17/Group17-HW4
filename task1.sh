#!/bin/bash
# edit task1.sh...
# Start infinite.sh in the background
sh infinite.sh 

# List all processes
ps > output.txt

sleep 5
# Find the process ID (PID) of infinite.sh and kill it
kill -9 $(ps | grep '[s]h infinite.sh' | awk '{print $1}')


ps > output1.txt
sleep 5