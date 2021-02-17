# DOCKER WEBPROXY

This is a fork of [docker-compose-letsencrypt-nginx-proxy](https://github.com/evertramos/.docker-compose-letsencrypt-nginx-proxy-companion)

## Set up

After configuring the `.env`, run those commands

```shell
docker network create webproxy
docker-compose up -d
```

## LICENSE

See [license](LICENSE.txt)
