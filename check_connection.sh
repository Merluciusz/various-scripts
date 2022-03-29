#!/bin/bash
# A simple script to check if a connection is valid

# Variables
HOST=$1
ERROR_CODE="ping_check.sh $HOST"
echo "error code: ${ERROR_CODE}"

# 
if [ "${ERROR_CODE}" -eq "0" ]
then
echo "the ping was successful"
else
echo "the ping was not successful. $HOST unreachable"
fi

