#!/bin/bash
APP_NAME=""
IMAGE=""

echo "app is $APP_NAME "

docker run -d --name ${APP_NAME}  $IMAGE