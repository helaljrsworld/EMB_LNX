#!/bin/bash


read -p "Enter the directory path to convert file names to lowercase: " directory

if [ ! -d "$directory" ]; then
    echo "Error: The directory '$directory' does not exist."
    exit 1
fi

for file in "$directory"/*; do
   
    dir=$(dirname "$file")
    base=$(basename "$file")
    lower_base=$(echo "$base" | tr 'A-Z' 'a-z')
   
    if [ "$base" != "$lower_base" ]; then
        mv "$file" "$dir/$lower_base"
        echo "Renamed: $file -> $dir/$lower_base"
    fi
done

echo "All file names have been converted to lowercase."
