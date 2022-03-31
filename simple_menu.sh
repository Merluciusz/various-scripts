#!/bin/bash
# A simple script used to create a menu in bash

function print_menu() {
    printf "\n 1) check user details \n 2) check the uptime \n 3) general info \n 0) Exit \n"
}

function init_menu() {
    while true; do
        print_menu
        read -p "Enter your choice from the menu": CHOICE
        case "$CHOICE" in
        "1")
            #name=`whoami`
            name=$(whoami)
            printf "You are user ${name} \n"
            ;;
        "2")
            printf "The uptime of your pc is: \n $(uptime)"
            ;;
        "3")
            neofetch
            ;;
        "0")
            printf " Exiting the program.. \n"
            break
            ;;
        *)
            printf "Unknown command $CHOICE"
            ;;
        esac
    done
}

# the call to the functions
init_menu
