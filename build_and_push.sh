#!/bin/bash

echo "Building ..."

docker build -t bobmoff/cocktail-server -f Dockerfile-prod .

echo "Pushing .."

docker push bobmoff/cocktail-server

# echo "Deploying .."

curl -X POST https://cloud.docker.com/api/app/v1/service/xxxxxxxxxxxxxxxxxxxxxx

echo "Done!"