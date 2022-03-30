#!/bin/bash
# A simple script used for testing while loops

AMOUNT=$1

do_the_work() {

    local index=$AMOUNT
    declare -p index

    while [ $index -ge 0 ]; do
        echo "Sleeping for $index times"
        # index=$(($index - 1))
        ((index--))
        sleep 2
    done
    return 5
}

do_the_work
echo $?
