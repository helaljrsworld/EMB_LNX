#!/bin/bash

read -p "Enter array elements separated by spaces: " -a array

sum=0

for element in "${array[@]}"; do
    sum=$((sum + element))
done

echo "The sum of the array elements is: $sum"
