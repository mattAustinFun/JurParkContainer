containers=$(docker container ls -aq)
if [ -n "$containers" ]; then
  docker container stop $containers
  docker container rm -f $containers
fi

images=$(docker image ls -aq)
if [ -n "$images" ]; then
  docker image rm -f $images
fi

volumes=$(docker volume ls -q)
if [ -n "$volumes" ]; then
  docker volume rm -f $volumes
fi

docker system prune -a --volumes -f