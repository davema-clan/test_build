#!/bin/bash
APP_NAME=""
IMAGE=""

aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin AWS_ACCOUNT.dkr.ecr.ap-southeast-1.amazonaws.com
docker run -d --name ${APP_NAME}  $IMAGE