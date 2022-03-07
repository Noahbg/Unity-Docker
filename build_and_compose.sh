#!/bin/bash

cd /Users/bobmoff/Projects/CocktailCruise/server

docker build -t bobmoff/cocktail-server -f Dockerfile-dev .

docker-compose up