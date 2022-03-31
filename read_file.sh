#!/bin/bash
# A simple script used to read a file

LINE_NUM=1

while read LINE
do
echo "$LINE_NUM: $LINE"
((LINE_NUM++))
sleep 1
done < /etc/fstab
