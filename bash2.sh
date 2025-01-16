#!/bin/bash


# Write a script that:
 
# Takes a number as input.
# Checks if the number is positive, negative, or zero, and prints the result.
# Write a script to determine if a file exists and whether it’s a file or a directory. Use:
 
# -e: Check if a file exists.
# -d: Check if it’s a directory.
# -f: Check if it’s a regular file.

# 1

# Prompt the user for a number
read -p "Enter a number: " number

# Check the conditions

if [ $number -gt 0 ]; then
    echo "The number is positive."
elif [ $number -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
fi
