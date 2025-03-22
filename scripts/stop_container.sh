#!/bin/bash

# Get the IDs of running containers
containerid=$(docker ps -q)

# Check if any containers are running
if [ -n "$containerid" ]; then
  echo "Stopping and removing container(s): $containerid"
  docker rm -f $containerid
else
  echo "No running containers to remove."
fi


