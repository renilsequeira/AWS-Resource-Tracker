#!/bin/bash

###############################################
# Author: Renil
# Date: 01/November/2023
# Version: v1
#
# This script reports AWS resource usage by listing
# information about S3 buckets, EC2 instances, Lambda functions, and IAM users.
#################################################

# AWS resources to be tracked: S3, EC2, Lambda, IAM

# Redirect all output to a file
exec > >(tee -a output.log) 2>&1

# List S3 Buckets
echo "Listing S3 Buckets:"
aws s3 ls

# List EC2 instances and redirect output to a file
echo "Listing EC2 Instances:"
aws ec2 describe-instances

# List Lambda functions
echo "Listing Lambda Functions:"
aws lambda list-functions

# List IAM users and extract usernames
echo "Listing IAM Users:"
aws iam list-users 2>/dev/null | jq -r '.Users[]? | .UserName'

