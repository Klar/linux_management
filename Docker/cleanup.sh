#exited docker clean
docker rm $(docker ps -a -q -f status=exited)
docker rm $(docker ps -a -q -f status=created)
#volume clean
  #be carefull when data is in there, better not using it
  #docker volume ls -qf dangling=true | xargs -r docker volume rm
#remove (old) docker images - new does exists
docker rmi $(docker images -f dangling=true -q)
