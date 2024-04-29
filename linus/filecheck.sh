#!/bin/bash

echo "Enter the name you want to check"
read filename
cd ~
if [ -e "$filename" ]
then
	echo $filename "exist"
   else
	 echo $filename "does not exist"
fi
