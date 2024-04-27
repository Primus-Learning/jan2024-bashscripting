#! /bin/bash
read -p "enter a number;" number
if [ $number -ge 1 ]
then
	echo "$number is not a prime"
else 
	echo "$number is a prime"
fi
