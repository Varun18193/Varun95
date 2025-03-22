#!/bin/bash
set -e

# Stop the running container (if any)
containerid= dockerps | awk -F " " '{print $1}'
docker rm -f $containerid
