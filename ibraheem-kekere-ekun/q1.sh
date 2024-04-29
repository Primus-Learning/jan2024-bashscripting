#!/bin/bash

read -p "Enter a number: " num


is_prime () {
	if [ $num -lt 2 ] || [ $((num % 2)) -eq 0 ]
	then
		echo "$num is not a prime number"
		return
	fi
	
	if [ $num -eq 2 ]
	then
		echo "$num is a prime number"
		return
	fi

	for ((i=3; i*i<=$num; i+=2))
	do
		if [ $((num % i)) -eq 0 ]
		then
			echo "$num is not a prime number"
			return
		else
			echo "$num is a prime number"
			return
		fi
	done
}

is_prime $num

