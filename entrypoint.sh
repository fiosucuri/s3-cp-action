#!/bin/sh

set -e

aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
aws configure set default.region us-west-2

aws s3 cp ${FILE} s3://${AWS_S3_BUCKET}
