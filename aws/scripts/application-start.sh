#!/bin/bash
APP_NAME="{{APP_NAME}}"
IMAGE="{{IMAGE}}"

docker run -d --restart=always --name ${APP_NAME}  $IMAGE