#!/bin/bash
if aws s3 ls "s3://$S3_BUCKET" 2>&1 | grep -q 'NoSuchBucket'
then
AWS_ACCESS_KEY_ID='***'
AWS_SECRET_ACCESS_KEY='***'
REGION='us-east-1' 
aws s3 mb "s3://$1"
aws s3 cp "s3://frombucket/testfile.txt" "s3://$1/testfile.txt"
f1