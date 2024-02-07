#!/bin/bash

if command -v docker-compose >/dev/null 2>&1; then
  COMPOSE="docker-compose"
else
  COMPOSE="docker compose"
fi

if [ ! -z "$1" ] && [ "$1" = "build" ]; then
  $COMPOSE build $2

elif [ ! -z "$1" ] && [ "$1" = "build no-cache" ]; then
  $COMPOSE build --no-cache

elif [ ! -z "$1" ] && [ "$1" = "down" ]; then
  $COMPOSE down

elif [ ! -z "$1" ] && [ "$1" = "stop" ]; then
  $COMPOSE stop

elif [ ! -z "$1" ] && [ "$1" = "up" ]; then
  $COMPOSE up -d

elif [ ! -z "$1" ] && [ "$1" = "c" ]; then
  $COMPOSE run api rails c

elif [ ! -z "$1" ] && [ "$1" = "server" ]; then
  $COMPOSE run api rails s -b '0.0.0.0'

elif [ ! -z "$1" ] && [ "$1" = "setup" ]; then
  $COMPOSE run api rails dev:setup

elif [ ! -z "$1" ] && [ "$1" = "db-reset" ]; then
  $COMPOSE run api rails db-reset

elif [ ! -z "$1" ] && [ "$1" = "create" ]; then
  echo "Creating databases..."
  $COMPOSE run api rails db:create

elif [ ! -z "$1" ] && [ "$1" = "drop" ]; then
  $COMPOSE run api rails db-drop

elif [ ! -z "$1" ] && [ "$1" = "seed" ]; then
  $COMPOSE run api rails db-seed

elif [ ! -z "$1" ] && [ "$1" = "migrate" ]; then
  $COMPOSE run api rails db-migrate

elif [ ! -z "$1" ] && [ "$1" = "setup-db" ]; then
  $COMPOSE run api rails setup-db

elif [ ! -z "$1" ] && [ "$1" = "pronto" ]; then
  $COMPOSE run api bundle

elif [ ! -z "$1" ] && [ "$1" = "rake" ]; then
  $COMPOSE run api rails rake "$2"

elif [ ! -z "$1" ] && [ "$1" = "routes" ]; then
  $COMPOSE run api rails routes

elif [ ! -z "$1" ] && [ "$1" = "rspec" ]; then
  $COMPOSE run api rails rspec "$2"

elif [ ! -z "$1" ] && [ "$1" = "rubocop" ]; then
  $COMPOSE run api rubocop "$2"

else
  echo "Missing/invalid parameter to execute docker.sh"

fi
