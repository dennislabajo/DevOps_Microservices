#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
VERSION=v.2
NAME=devops_microservices
ID=dlabajo
PORT=8080
dockerpath=$ID/$NAME

# Step 1:
# Build image and add a descriptive tag
docker build --tag $dockerpath:$VERSION .
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
docker run --name $NAME -p $PORT:80 --rm $dockerpath:$VERSION

