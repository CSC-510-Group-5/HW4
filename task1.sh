#!/bin/bash
sh infinite.sh
ps |grep 'infinite.sh$'
kill -9 $(ps |grep 'infinite.sh$' |awk '{print $1}' ) # run the same script here to see what it produces