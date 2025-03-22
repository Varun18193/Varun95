#!/bin/bash

echo "Stopping existing container..."

# Get the container ID running on port 5000
CONTAINER_ID=$(docker ps -q --filter "publish=5000")

# Stop the container if it's running
if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  docker rm "$CONTAINER_ID"
else
  echo "No running container found on port 5000."
fi


