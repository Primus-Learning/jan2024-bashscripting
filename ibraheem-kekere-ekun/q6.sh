#!/bin/bash

# Prompt the user to enter the bucket name to create

read -p "Enter bucket name: " bucket_name

# Check if the bucket exists
if aws s3 ls "s3://$bucket_name" >/dev/null 2>&1; then
    echo "S3 bucket '$bucket_name' already exists."
else
    # Create the bucket
    if aws s3 mb "s3://$bucket_name"; then
        echo "S3 bucket '$bucket_name' created successfully."
    else
        echo "Failed to create S3 bucket '$bucket_name'."
        exit 1
    fi
fi
