#!/bin/bash
# Author: Lime
# Description: A disk clean-up script. to be used with  clean-snaps script
# Just make sure to select your own path when running the scripts
# Run it as root

# Variables
TITLE=$0
DATE=$(date)
USER_CODE=$(id -ur)
ROOT_CODE=0
USER_CODE_STATUS=1000

# info
echo "${DATE} Executing ${TITLE} script"

function check_root() {
    if [ "$USER_CODE" -ne "$ROOT_CODE" ]; then
        echo "Run the script as a root user"
        echo "user code = $USER_CODE and standard code = $USER_CODE_STATUS; root has to be $ROOT_CODE"
        echo "Exiting now ..."
        exit 1
    fi
}

function make_space() {
    sudo apt-get autoremove -y
    sudo apt-get autoclean -y
    # /home/emil/Cleanup/clean-snaps.sh # second script starts here

}

function chain_scripts() {
    echo "Chaining scripts----------------------------------------------------------------------"
    if [ -e /home/emil/Cleanup/clean-snaps.sh ]; then # Make sure you have this script localy
        /home/emil/Cleanup/clean-snaps.sh # select your own path here
    else
        echo "Some required scripts are missing.Check the file and run again!"
        echo "Aborting..."	
        echo "Done"
        exit 1
    fi
    echo "--------------------------------------------------------------------------------------"
}

function check_large_files() {
    echo "--------------------------------------------------------------------------------------"
    echo "Searching for large files over the specified size of 50MB"
    sudo find / -type f -size +500M -exec ls -lh {} \;
    echo "Done checking! -----------------------------------------------------------------------"
}

function check_available_space() {
    # check_available_space
    space=$(df -h | grep -i sda5 | awk '{print $4}' | cut -d'G' -f1)
    if [ $space -le 19 ]; then
        check_large_files
        make_space
        chain_scripts
        echo $space
    else
        echo "You are not running low of disk space"
    fi
}

check_root
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

# sudo /home/emil/Cleanup/check-diskfile.sh > /home/emil/Cleanup/data-dump.txt 2>&1
