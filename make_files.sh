#!/bin/bash
# A simple script to make a ton of files and nothing useful

COUNT=$1

function make_files() {
    mkdir ~/Downloads/DummyFiles
     
    for ((c = 1; c <= COUNT; c++)); do
        touch ~/Downloads/DummyFiles/file$c
        echo "File file$c created successfully"
    done
}

make_files
