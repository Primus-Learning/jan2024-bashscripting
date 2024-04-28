#!/bin/bash
 -a numbers
 for (( i=0; i<3; i++ )); do
	 echo "enter number $((i+1)):"
	 read numbers[$1]
 done
 numbers=($(echo "${numbers[@]}" | sort -n))
 echo "the numbers in accendind order are:"
 for num in "${sorted_numbers[@]}"; do
	 echo "$num"
 done
