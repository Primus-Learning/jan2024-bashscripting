#!/bin/bash

echo "Enter a number:"
read number
i=2

if [ $number -lt 1 ]
then
    echo "$number is not a prime number."
    exit
fi

while [ $i -lt $number ]
do
    if [  $(($number % $i)) -eq 0 ]
    then
        echo "$number is not a prime number."
        exit
    fi
    i=$((i + 1))
done

echo "$number is a prime number."
