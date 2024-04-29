#!/bin/bash

sort_numbers() {
    echo "$1 $2 $3" | tr ' ' '\n' | sort -n | tr '\n' ' '
}


echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2
echo "Enter the third number:"
read num3


echo "Numbers in ascending order:"
sorted=$(sort_numbers "$num1" "$num2" "$num3")
echo "$sorted"

