#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
VERSION=v.3
OLD_VERSION=v.2
NAME=devops_microservices
ID=<YOUR DOCKER HUB ID>

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=$ID/$NAME
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $dockerpath:$OLD_VERSION $dockerpath:$VERSION

# Step 3:
# Push image to a docker repository
docker push $dockerpath