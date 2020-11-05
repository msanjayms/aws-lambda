# AWS Lambda

Creates and deploys a "Hello World" AWS Lambda function, implemented in Java.

## Prerequisites

* Created: An AWS account, and an S3 bucket for storing temporary deployment artifacts (referred to as $CF_BUCKET below)
* Installed: AWS CLI, Maven, SAM CLI
* Configured: AWS credentials in your terminal
* Install aws cli on your machine.
	- Make sure you have Python 3.9 (or the latest) installed on your Ubuntu machine.
	- Follow the link from the AWS 
		https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
		- Download: awscli-bundle.zip, unzip and run install script.
		```
			curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
			unzip awscliv2.zip
			sudo ./aws/install
        ```
	- Once installed succesfully, configure aws cli to talk to AWS account. 
		- This would required a pre-configured user, access key and a secret key.
		- This can achieved using IAM service, and by adding a user with admin previllege.
		- Then use the following command to configure the aws cli.
			> aws configure
		- Once configured use following command to verify the IAM user:
			```
			> aws iam get-user
			```
2.) Install AWS SAM Cli on your machine.
	- make sure you have the latest python (or minimum 3.7).
	- Run the following command to aws sam cli:
	```
	pip3 install aws-sam-cli
    ```


## Usage

To build:

```
$ mvn package
```

To deploy:

```
$ sam deploy --s3-bucket $CF_BUCKET --stack-name HelloWorldLambdaJava --capabilities CAPABILITY_IAM
or
> ./sam-deploy.sh
```

To test:

The above will create a new function in Lambda, so you can test via the Lambda web console,
or via the CLI using `aws lambda invoke`.