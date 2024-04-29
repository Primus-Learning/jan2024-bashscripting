#!/bin/bash

sort_numbers() {
    echo "Numbers in descending order:"
    echo "$1 $2 $3" | tr ' ' '\n' | sort -nr
}

echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Enter third number:"
read num3

sort_numbers "$num1" "$num2" "$num3"
