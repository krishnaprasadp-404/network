#!/bin/bash

# Read a line of text from the user
echo "Enter a line of text:"
read line

# Use grep and wc to count vowels
vowel_count=$(echo "$line" | grep -o -i "[aeiou]" | wc -l)

echo "Number of vowels: $vowel_count"

