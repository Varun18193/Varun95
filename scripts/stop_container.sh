#!/bin/bash

# Get IDs of both running and stopped containers
containerid=$(docker ps -aq)

# Check if any containers exist before trying to remove them
if [ -n "$containerid" ]; then
  echo "Stopping and removing container(s): $containerid"
  docker rm -f $containerid
else
  echo "No containers to remove."
fi

