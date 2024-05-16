#!/bin/bash
APP_NAME=$1
IMAGE=$2

docker run -d --restart=always --name ${APP_NAME}  $IMAGE