docker run -d --restart=always --name ${APP_NAME} \
  --log-opt max-size=10m --log-opt max-file=3  $IMAGE