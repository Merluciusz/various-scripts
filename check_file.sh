#!/bin/bash
 # A simple script to check if a file exists

# Variables
TITLE=$0
FILE=$1

# info 
echo "Executing ${TITLE} script"

# if statement
if [ -e /etc/${FILE} ]
then
    echo "The file ${FILE} exists"
    if [ -s /etc/${FILE} ]
    then
        echo "You have the permissions to edit the file ${FILE}"
    else
         echo "You do not have the permissions to edit the file ${FILE}"
    fi
else
    echo "The file ${FILE} does not exist"
fi

# Some random extra code 
