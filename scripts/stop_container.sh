# Stop and remove the running container (if any)
containerid=$(docker ps -q)  # Get the container ID(s)
if [ -n "$containerid" ]; then
  docker rm -f $containerid
  echo "Container(s) removed: $containerid"
else
  echo "No running containers to remove."
fi

