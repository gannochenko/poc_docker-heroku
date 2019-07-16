#!/usr/bin/env bash

docker login --username=_ --password=`heroku auth:token 2> stdout` registry.heroku.com

docker build -t registry.heroku.com/my-first-unique-app/web -f ./Dockerfile .
docker push registry.heroku.com/my-first-unique-app/web

heroku container:release web -a my-first-unique-app
