#!/bin/bash

DOCK_IMG=$(docker images -q);

if [[ -z "$DOCK_IMG" ]] ; then
	echo 'No Docker Images Present'
else
	docker rmi -f $DOCK_IMG
	echo 'Docker Images Removed'
fi

DOCK_Cont=$(docker ps -a -q);

if [[ -z "$DOCK_Cont" ]] ; then
	echo 'No Running Conatiners'
else
	docker stop $(docker ps)
	docker rm -f $DOCK_Cont
	echo 'Container Removed'
fi
