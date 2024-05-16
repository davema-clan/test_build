#! /bin/bash
APP_NAME=$1
echo $APP_NAME
docker rm -f ${APP_NAME}
