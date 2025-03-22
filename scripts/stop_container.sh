#!/bin/bash

# Stop the running container (if any)
containerid= docker ps | awk -F " " '{print $1}'
#stopping and removing container
docker rm -f $containerid

