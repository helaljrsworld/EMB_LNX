#!/bin/bash

echo "Enter the name of the file to process (with full path if necessary):"
read filename

if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

sort "$filename" | uniq > "$filename".tmp && mv "$filename".tmp "$filename"

echo "Duplicate lines have been removed from '$filename'."
