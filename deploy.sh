#!/usr/bin/env bash

docker login --username=_ --password=`heroku auth:token 2> stdout` registry.heroku.com

docker build -t registry.heroku.com/awesome-city-api/web -f ./Dockerfile .
docker push registry.heroku.com/awesome-city-api/web

heroku container:release web -a awesome-city-api
