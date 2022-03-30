#!/bin/bash
# A simple script used for testing and nothing else

NAME=$1
echo "The name $NAME"
#declare -p NAME

function do_greetings() {
    case "$NAME" in
    "Emil")
        echo "Hello $NAME you work at endava"
        ;;
    "Raul")
        echo "Hello $NAME you work at Sonrisa"
        ;;
    *)
        echo "Name $NAME is unknown"
        ;;
    esac

    if [ $NAME = 'Emil' ]; then
        echo "You are the owner"

    fi
}

function do_things() {
    for ((i = 1; i <= 10; i++)); do
        FINAL_NAME="$NAME$i"
        #declare -p FINAL_NAME
        echo "The name $FINAL_NAME created successfully"

    done
}

do_greetings
do_things
