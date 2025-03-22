#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull varundocs/simple-python-app

# Run the Docker image as a container
docker run -t -p 5000:5000 varundocs/simple-python-app
