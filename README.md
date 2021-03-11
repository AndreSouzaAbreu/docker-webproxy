# DOCKER WEBPROXY

This is a fork of [docker-compose-letsencrypt-nginx-proxy](https://github.com/evertramos/.docker-compose-letsencrypt-nginx-proxy-companion).

## Set up

### TL;DR

Simply run the start script `./init.sh`.

### Detailed explanation

After configuring the `.env`, run those commands.

```shell
source .env
[[ -d conf.d ]] && cp -R conf.d $NGINX_FILES_PATH/
docker network create webproxy
docker-compose up -d
```

The first two commands are intended to copy the default configuration files (if they exist) to the `$NGINX_FILES_PATH` directory. This directory will be mounted on `/etc/nginx` on the containers.

## LICENSE

Do whatever you want with the code of this repo.
