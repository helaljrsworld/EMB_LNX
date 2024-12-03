#!/bin/bash

read -p "Enter the directory path to search for empty files: " directory

if [ ! -d "$directory" ]; then
    echo "Error: The directory '$directory' does not exist."
    exit 1
fi

output_file="empty_files.txt"

find "$directory" -type f -empty > "$output_file"

echo "Empty files have been listed in $output_file."
