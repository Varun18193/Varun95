#!/bin/bash

echo "Starting Docker container..."

# Pull the latest Docker image
docker pull varundocs/simple-python-app:latest

# Run the container in detached mode
docker run -d -p 5000:5000 --name simple-python-app varundocs/simple-python-app:latest

# Confirm the container is running
docker ps


