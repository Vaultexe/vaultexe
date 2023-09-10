#!/bin/bash

# Override the default env file
export ENV_FILE=${ENV_FILE:=./env/.env}

./run.sh
