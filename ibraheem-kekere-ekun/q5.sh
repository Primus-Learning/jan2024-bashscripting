#!/bin/bash

# Prompt the user to enter the username to create
read -p "Enter the username to create: " username

# Create IAM user
if ! aws iam create-user --user-name "${username}" --output json; then
    echo "Failed to create IAM user."
    exit 1
fi

# Create access key and secret key
credentials=$(aws iam create-access-key --user-name "${username}" --query 'AccessKey.[AccessKeyId,SecretAccessKey]' --output text)

# Extract access key ID and secret access key
access_key_id=$(echo "${credentials}" | cut -d " " -f 1)
secret_access_key=$(echo "${credentials}" | cut --complement -d " " -f 1)

# Display the created IAM user
echo "The user '${username}' has been created."