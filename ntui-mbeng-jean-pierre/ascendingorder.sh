#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3


if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]; then
    min=$num1
    if [ $num2 -lt $num3 ]; then
        mid=$num2
        max=$num3
    else
        mid=$num3
        max=$num2
    fi
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]; then
    min=$num2
    if [ $num1 -lt $num3 ]; then
        mid=$num1
        max=$num3
    else
        mid=$num3
        max=$num1
    fi
else
    min=$num3
    if [ $num1 -lt $num2 ]; then
        mid=$num1
        max=$num2
    else
        mid=$num2
        max=$num1
    fi
fi


echo "Numbers in ascending order: $min, $mid, $max"
