#!/bin/bash

# get services from command line arguments default to all
SERVICES=${@:-""}

# override target .env file if not set
ENV_FILE=${ENV_FILE:=./env/.env.dev}

# if network doesnt exist, create it
docker network inspect vaultexe-proxy-network &>/dev/null || docker network create vaultexe-proxy-network

set -x

docker-compose --env-file $ENV_FILE up --build --force-recreate --remove-orphans $SERVICES
