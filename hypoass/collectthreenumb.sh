#! /bin/bash
echo "enter 3 numbers and the program will display it in ascending order"
i=1
arr=()
while [ $i -le 3 ]
do
    echo "enter number $i"
    read n
    arr+=( $n )
    ((i++))
done
#echo "${arr[@]}"
IFS=$'\n' sorted=($(sort <<<"${arr[*]}")); unset IFS
printf "%s, " "${sorted[@]}"
