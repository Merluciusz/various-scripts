#!/bin/bash
# parseing a CSV file with field separator

# format:
# Country Capital Population Aria Continent Neighbours
# Moldova (Republic of)|Chișinău|3553100|33846|Europe|ROU~UKR

# global variables
OLDFSI=$IFS
IFS="|"
count=1

while read country capital population aria continent neighbours
do
echo -e "\e[1;33m$count $country \
---------------------------\e[0m\n\

Capital :\t $capital\n\
Population :\t $population\n\
Aria :\t\t $aria\n\
Continent :\t $continent\n\
Neigbours :\t $neighbours\n"

((count++))
done < $1

IFS=$IFS