#!/bin/bash

# Prompt the user for input
echo "Enter the radius of the circle:"
read radius

# Define the value of Pi
pi=3.14159

# Calculate the area of the circle (Area = pi * radius^2)
area=$(echo "$pi * $radius * $radius" | bc)

# Calculate the circumference of the circle (Circumference = 2 * pi * radius)
circumference=$(echo "2 * $pi * $radius" | bc)

# Display the results
echo "Area of the circle: $area"
echo "Circumference of the circle: $circumference"

