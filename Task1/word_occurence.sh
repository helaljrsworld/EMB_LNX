#!/bin/bash

echo "Enter the word you want to search for:"
read word

echo "Enter the file name (with full path if necessary):"
read filename

if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

count=$(grep -o -i "$word" "$filename" | wc -l)
echo "The word '$word' appears $count times in the file '$filename'."
