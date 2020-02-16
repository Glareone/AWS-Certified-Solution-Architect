#!/bin/bash
yum update -y
aws s3 sync --delete s3://YOUR_S3_BUCKET_NAME /var/www/html