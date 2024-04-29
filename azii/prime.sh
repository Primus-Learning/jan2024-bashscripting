#! /bin/bash

is_prime() {
    num=$1

    if [ $num -lt 2 ]; then
        echo "$num is not prime."
        return
    fi
    for (( i=2; i*i<num; i++ )); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is not prime number."
            return
        fi
    done
    echo "$num is prime number."
}
 read -p "Enter a number to check if it's prime: " input

 is_prime $input

