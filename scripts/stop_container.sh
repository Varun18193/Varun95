#!/bin/bash

# Get the IDs of running containers
docker ps -a
# Stop the running container (if any)
containerid= docker ps | awk -F " " '{print $1}'
#stopping and removing container
docker rm -f $containerid

