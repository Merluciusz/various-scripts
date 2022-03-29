#!/bin/bash
# Let`s read some input

read -p "Enter your name: " NAME
USER=$(whoami)

# echo "Hello user ${NAME}"
# echo "The owner is ${USER}"

if [ "$NAME" = "$USER" ] # always check for the spaces between brackets
then
    echo "Wellcome ${USER}"
else
    echo "User ${NAME} not recognized"
fi
