#!/bin/bash
# Author: Alan Pope, part of Snapcraft team at Canonicalx
# Description: Removes old revisions of snaps
# Modified by: Lime
# Can be paired with check-diskfile script 
# CLOSE ALL SNAPS BEFORE RUNNING THIS

# Variables
TITLE=$0
# info
echo "Executing ${TITLE} script"
echo "Cleaning old revisions of snaps....."
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done
echo "All done, good to go!"
