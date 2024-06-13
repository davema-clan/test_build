#!/bin/bash
APP_NAME=""
IMAGE=""

aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 580167004110.dkr.ecr.ap-southeast-1.amazonaws.com
docker run -d --name ${APP_NAME}  $IMAGE