#! /bin/bash
APP_NAME=""

docker ps -a |grep $APP_NAME && docker stop $APP_NAME && docker rm  $APP_NAME