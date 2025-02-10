#!/bin/bash
sh infinite.sh
# List processes, grep for infinite.sh ending, print first field
ps | grep 'infinite.sh$' | awk '{print $1}' 
kill -9 $(ps | grep 'infinite.sh$' | awk '{print $1}' )