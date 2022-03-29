 #!/bin/bash
 # A simple script for learning purpose

# Variables
TITLE=$0
KERNEL_VERSION=$(uname -r)
#COLORS="red green blue"

# info 
echo "Executing $0 script"
echo "You are running on a ${KERNEL_VERSION} Kernel"

# if statement
if [ -e /etc/shadow ]
then
    echo "The file exists"
    if [ -s /etc/shadow ]
    then
        echo "You have the permissions to edit the file"
    else
         echo "You do not have the permissions to edit the file"
    fi
else
    echo "The file does not exist"
fi

# Some random extra code 

# for loop 
#for COLOR in $COLORS
#do
#    echo "Color: $COLOR"
#done


# this will create a recursive task

#SCRIPTS=$(ls ~/Documents/scripts/)
#for SCRIPT in $SCRIPTS
#do
    #./$SCRIPT
#done