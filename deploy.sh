#!/usr/bin/env bash

heroku container:login
docker login --username=_ --password=`heroku auth:token 2> stdout` registry.heroku.com

docker build -t registry.heroku.com/awesome-city-api/web -f docker/production.dockerfile .
docker push registry.heroku.com/awesome-city-api/web

heroku container:release web -a awesome-city-api
