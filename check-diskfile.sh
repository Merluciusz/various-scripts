#!/bin/bash
# A simple script that checks for the disck space
#Author: Lime

# Variables
TITLE=$0
USER_CODE=$(id -ur)
ROOT_CODE=0
USER_CODE_STATUS=1000

# info
echo "Executing ${TITLE} script"

function check_root() {
    if [ "$USER_CODE" -ne "$ROOT_CODE" ]; then
        echo "Run the script as a root user"
        echo "user code = $USER_CODE and standard code = $USER_CODE_STATUS; root has to be $ROOT_CODE"
        echo "Exiting now ..."
        exit 1
    fi
    
}
function check_large_files(){
    echo "Searching for large files over the specified size of 50MB"
    sudo find / -type f -size +500M -exec ls -lh {} \;
    echo "Done checking!"
}

function check_available_space() {
    # check_available_space
    space=$(df -h | grep -i sda5 | awk '{print $4}' | cut -d'G' -f1)
    if [ $space -le 16 ]; then
        echo $space
    fi
}

check_root
check_large_files
check_available_space

#check_available_space
#check_available_space   # or result=`check_available_space`

# Auto-removing unnecessary dependencies
# sudo apt-get autoremove

# Cleaning up cached packages
# sudo apt-get clean

#This next command was a life saver. 
#This searches for large files over the specified size (50MB in my case) and prints them to the console.
#sudo find / -type f -size +50M -exec ls -lh {} \;

