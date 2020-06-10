#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
VERSION=beta
NAME=devops_microservices
PORT=8080
# Step 1:
# Build image and add a descriptive tag
docker build --tag $NAME:$VERSION .
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
docker run --name $NAME -p $PORT:80 --rm $NAME:$VERSION
