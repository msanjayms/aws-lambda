#!/bin/sh
export CF_BUCKET=dev-sanjay-lambda-bucket
export AWS_DEFAULT_REGION=ap-south-1
sam deploy \
	--s3-bucket $CF_BUCKET \
	--stack-name  aws-lambda\
	--capabilities CAPABILITY_IAM

