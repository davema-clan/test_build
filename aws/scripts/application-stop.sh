#! /bin/bash
APP_NAME="{{APP_NAME}}"
echo $APP_NAME
docker rm -f ${APP_NAME}
