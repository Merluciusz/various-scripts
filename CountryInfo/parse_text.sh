#!/bin/bash
# parseing a CSV file with field separator
# To be used in pair with "countries.txt"

# format:
# Country Capital Population Aria Continent Neighbours
# Moldova (Republic of)|Chișinău|3553100|33846|Europe|ROU~UKR

# global variables
YELLOW="\e[1;33m"
LINE_RES="\e[0m"
OLDIFS=$IFS
IFS="|"
FILE=$1
count=1

function check_file() {
    if [ ! -f ./$FILE ]; then
        echo "The CSV file is missing"
        exit 1
    fi
}

check_file

while read country capital population aria continent neighbours; do
    echo -e "$YELLOW$count $country \
---------------------------$LINE_RES\n\

Capital :\t $capital\n\
Population :\t $population\n\
Aria :\t\t $aria\n\
Continent :\t $continent\n\
Neigbours :\t $neighbours\n"

    ((count++))
done <$FILE

IFS=$OLDIFS


