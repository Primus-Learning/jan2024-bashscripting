#!/bin/bash


check_bucket_exists() {
    local bucket_name="$1"
    if aws s3api head-bucket --bucket "$bucket_name" 2>/dev/null; then
        return 0 # Bucket exists
    else
        return 1 # Bucket does not exist
    fi
}


create_bucket() {
    local bucket_name="$1"
    aws s3api create-bucket --bucket "$bucket_name" --region eu-north-1
    echo "S3 bucket '$bucket_name' created successfully."
}


bucket_name="fourtyfour000"

if check_bucket_exists "$bucket_name"; then
    echo "S3 bucket '$bucket_name' already exists."
else
    create_bucket "$bucket_name"
fi
