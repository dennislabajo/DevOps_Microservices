#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
NAME=devops_microservices
VERSION=.1

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dlabajo/$NAME
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $NAME:beta "$dockerpath:v$VERSION"

# Step 3:
# Push image to a docker repository
docker push $dockerpath