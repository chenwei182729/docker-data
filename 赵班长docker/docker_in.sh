#!/bin/bash
# Using nsenter to access docker
docker_in(){
	NAME_ID=$1
	PID=$(docker inspect --format "{{ .State.Pid }}" $NAME_ID)
	nsenter -t $PID -m -u -i -n -p
}
docker_in $1
