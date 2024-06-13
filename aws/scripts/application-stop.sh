#! /bin/bash
APP_NAME=""

docker ps -a $APP_NAME  && grep docker stop $APP_NAME &&　docker rm  $APP_NAME