#!/bin/bash

# Prompt the user for the coefficients a, b, and c
echo "Enter coefficient a:"
read a
echo "Enter coefficient b:"
read b
echo "Enter coefficient c:"
read c

# Calculate the discriminant (b^2 - 4ac)
discriminant=$((b * b - 4 * a * c))

# Check the discriminant to determine the nature of the roots
if [ $discriminant -gt 0 ]; then
    # Two real and distinct roots
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2 * $a)" | bc -l)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2 * $a)" | bc -l)
    echo "Roots are real and different."
    echo "Root 1 = $root1"
    echo "Root 2 = $root2"
elif [ $discriminant -eq 0 ]; then
    # One real root (repeated)
    root=$(echo "scale=2; -$b / (2 * $a)" | bc -l)
    echo "Root is real and repeated."
    echo "Root = $root"
else
    # Two complex roots
    realPart=$(echo "scale=2; -$b / (2 * $a)" | bc -l)
    imaginaryPart=$(echo "scale=2; sqrt(-$discriminant) / (2 * $a)" | bc -l)
    echo "Roots are complex."
    echo "Root 1 = $realPart + $imaginaryPart i"
    echo "Root 2 = $realPart - $imaginaryPart i"
fi

