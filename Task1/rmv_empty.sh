#!/bin/bash

echo "Enter the directory path to check for empty files:"
read dir

if [ ! -d "$dir" ]; then
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi

find "$dir" -type f -size 0 -exec rm -f {} \;

echo "Empty files have been removed from '$dir'."
