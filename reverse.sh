#!/bin/bash

# Prompt the user for input
echo "Enter a number:"
read num

# Store the original number
original_num=$num

# Initialize the reverse variable
reverse=0

# Reverse the number
while [ $num -gt 0 ]; do
    # Extract the last digit of the number
    digit=$((num % 10))
    # Add the digit to the reverse number
    reverse=$((reverse * 10 + digit))
    # Remove the last digit from the number
    num=$((num / 10))
done

# Check if the original number and reverse are the same
if [ $original_num -eq $reverse ]; then
    echo "$original_num is a Palindrome"
else
    echo "$original_num is not a Palindrome"
fi

