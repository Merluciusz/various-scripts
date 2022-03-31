#!/bin/bash
# A simple script to check if a connection is valid
# to be used with the ./ping_check script located in the same folder

# Variables
HOST=$1
#ERROR_CODE=$(./ping_check.sh $HOST) # some adjustments required
./ping_check.sh $HOST
ERROR_CODE=$?
echo "error code: ${ERROR_CODE}"
# Functions
function check_success() {

    if [ "${ERROR_CODE}" -eq "0" ]; then
        echo "the ping was successful"
    else
        echo "the ping was not successful. $HOST unreachable"
    fi
}

check_success
