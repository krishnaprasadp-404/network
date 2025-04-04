#!/bin/bash

# Prompt the user for input
echo "Enter a string:"
read str

# Reverse the string using 'rev' command
reverse_str=$(echo $str | rev)

# Check if the original string and the reversed string are the same
if [ "$str" == "$reverse_str" ]; then
    echo "$str is a Palindrome"
else
    echo "$str is not a Palindrome"
fi

