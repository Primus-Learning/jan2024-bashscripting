#!/bin/bash

echo "Enter the first number: "
read num1

echo "Enter the second number: "
read num2

echo "Enter the third number: "
read num3

sorted_numbers=($(echo "$num1 $num2 $num3" | tr ' ' '\n' | sort -n))

echo "Numbers in ascending order: ${sorted_numbers[*]}"