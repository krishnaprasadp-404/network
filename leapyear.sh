#!/bin/bash

# Prompt the user for input
echo "Enter a year:"
read year

# Check if the year is a leap year
if (( year % 400 == 0 )); then
    echo "$year is a Leap Year"
elif (( year % 100 == 0 )); then
    echo "$year is not a Leap Year"
elif (( year % 4 == 0 )); then
    echo "$year is a Leap Year"
else
    echo "$year is not a Leap Year"
fi

