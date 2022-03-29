#!/bin/bash
 # A simple script to check if multiple file exist
 
 # Variables
 TITLE=$0
 FILES=$@
 
# info 
echo "Executing the ${TITLE} script"

 for FILE in ${FILES}
 do
  echo "checking the path /etc/${FILE} "
# if statement
if [ -f /etc/${FILE} ]  # if statement
then
    echo "The file ${FILE} exists"
    if [ -s /etc/${FILE} ]
    then
        echo "You have the permissions to edit the file ${FILE}"
    else
         echo "You do not have the permissions to edit the file ${FILE}"	 
fi # if statement

# elif statement
elif [ -d /etc/${FILE} ]  
then
    echo "The file ${FILE} is in fact a directory"
	ls -lah /etc/${FILE}
	echo "##############################################################"
	else
	echo "The file ${FILE} does not exist"	
fi # elif statement

done # The for loop
 
 