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



# Prompt the user for a file or directory path
read -p "Enter the file or directory path: " path

# Check if the path exists
if [ -e "$path" ]; then
    # Check if it is a directory
    if [ -d "$path" ]; then
        echo "It is a directory."
    # Check if it is a regular file
    elif [ -f "$path" ]; then
        echo "It is a regular file."
    else
        echo "It exists, but it is neither a regular file nor a directory."
    fi
else
    echo "The file or directory does not exist."
fi