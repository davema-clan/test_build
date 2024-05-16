#!/bin/bash
echo "app is $APP_NAME "

docker run -d --restart=always --name ${APP_NAME}  $IMAGE