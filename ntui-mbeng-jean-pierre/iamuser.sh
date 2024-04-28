#!/bin/bash

check_user_exists() {
    local username="$1"
    aws iam get-user --user-name "$username" &> /dev/null
}

create_user() {
    local username="$1"
    aws iam create-user --user-name "$username"
    echo "IAM user '$username' created successfully."
}

username="mbeng"

if check_user_exists "$username"; then
    echo "IAM user '$username' already exists."
else
    create_user "$username"
fi
