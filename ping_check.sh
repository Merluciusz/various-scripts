#!/bin/bash
# A simple script to check the ping
# the script accepts a host as an argument ex: ./ping_check google.com

# Variables
TITLE=$0
HOST="$1"

# info
# Functions

function show-title() {
    echo "Executing the ${TITLE} script"
}

function execute-ping() {
    # show-title
    ping -c 4 ${HOST} >/dev/null
    RETURN_CODE=$?

    if [ "$RETURN_CODE" -ne "0" ]; then
        #echo "the ping was not successful. $HOST unreachable"
        exit 1
    else
        #echo "the ping was successful"
         exit 0
    fi
}

show-title
execute-ping
