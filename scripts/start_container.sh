#!/bin/bash

# Stop any running container with the same name
docker stop simple-python-app 2>/dev/null || true
docker rm simple-python-app 2>/dev/null || true

# Pull the latest Docker image
docker pull varundocs/simple-python-app:latest

# Start the container
docker run -d \
  --name simple-python-app \
  -p 5000:5000 \
  --restart always \
  varundocs/simple-python-app:latest

# Confirm the container is running
docker ps -a

