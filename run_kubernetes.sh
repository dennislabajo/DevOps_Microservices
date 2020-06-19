#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
VERSION=v.3
NAME=devops_microservices
ID=<YOUR DOCKER HUB ID>
APP_NAME=devops-microsvc-app
EXPOSE_PORT=8080
TARGET_PORT=80

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="$ID/$NAME"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $APP_NAME --image="$dockerpath:$VERSION" --port=$TARGET_PORT

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment $APP_NAME --type=LoadBalancer --port=$EXPOSE_PORT --target-port=$TARGET_PORT

