#!/bin/bash

bucket_name="your_bucket_name"

aws s3api head-bucket --bucket "$bucket_name" >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "S3 bucket $bucket_name already exists."
else
    aws s3api create-bucket --bucket "$bucket_name" --region us-east-1
    echo "S3 bucket $bucket_name created successfully."
fi