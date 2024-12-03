#!/bin/bash
echo "Enter a positive integer N:"
read N
if ! [[ "$N" =~ ^[0-9]+$ ]] || [ "$N" -le 0 ]; then
    echo "Please enter a valid positive integer."
    exit 1
fi
sum=0
for (( i=1; i<=N; i++ ))
do
    sum=$((sum + i))
done
echo "The sum of integers from 1 to $N is: $sum"

