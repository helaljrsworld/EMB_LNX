#!/bin/bash


echo "Enter a positive integer:"
read num


if ! [[ "$num" =~ ^[0-9]+$ ]] || [ "$num" -lt 0 ]; then
    echo "Please enter a valid positive integer."
    exit 1
fi

factorial=1

for (( i=1; i<=num; i++ ))
do
    factorial=$((factorial * i))
done

echo "The factorial of $num is: $factorial"
