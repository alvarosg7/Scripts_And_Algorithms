#!/bin/bash


# The for loop iterates over a list of items, executing commands for each item.

for name in Alice Bob Charlie; do
    echo "Hello, $name!"  
done


for file in /c/Users/Alvaro.Sandino/*; do
    echo "Found file: $file"
done


# The while loop executes a block of code as long as a condition is true


# Write a script that uses a while loop to calculate the sum of numbers from 1 to a user-provided number

#prompt the user for input

read -p "Enter a number: " num


# Initialize variables

sum=0
current=1

# Loop to calculate sum

while [ $current -le $num ]; do  
    sum=$((sum + current)) # add current number to sum
    current=$((current + 1)) # increment current number
done

# print result

echo "The sum of numbers from 1 to $num is: $sum" 


