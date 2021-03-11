#!/bin/sh
[[ ! -f .env  ]] && cp .env.sample .env
chmod +x .env
source ./.env
mkdir -p $NGINX_FILES_PATH
[[ -d ./conf.d ]] && cp -R conf.d $NGINX_FILES_PATH/
docker network ls | grep $NETWORK > /dev/null || docker create $NETWORK
docker-compose up -d
