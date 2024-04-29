#!/bin/bash

username="your_username"

aws iam get-user --user-name "$username" >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "IAM user $username already exists."
else
    aws iam create-user --user-name "$username"
    echo "IAM user $username created successfully."
fi