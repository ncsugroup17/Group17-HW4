#!/bin/bash
# edit task1.sh...
sh infinite.sh 

# List all processes
ps > output.txt

# Find the process ID (PID) of infinite.sh and kill it
kill -9 $(ps | grep '[s]h infinite.sh' | awk '{print $1}')

# Verify that infinite.sh has been killed
if ps | grep -q '[s]h infinite.sh'; then
    echo "Failed to kill infinite.sh" > output1.txt
else
    echo "Successfully killed infinite.sh" > output1.txt
fi