#!/bin/bash
read -p "enter a number: " number
if  [ $number -gt 1 ]
then 
	echo "$number is not a prime"
else
	echo "$number is prime"
fi
