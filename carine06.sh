#! /bin/bash
read -p "enter a number: " number
if [ $number -gt 1 ]
then 
	echo "$number isnot a prime"
else
	echo "$number is a prime"
fi
