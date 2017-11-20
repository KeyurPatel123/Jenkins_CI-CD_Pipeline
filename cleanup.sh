#!/bin/bash

DOCK_Cont=$(docker ps -a -q);

if [[ -z "$DOCK_Cont" ]] ; then
        echo 'No Running Conatiners'
else
        docker stop $(docker ps)
        docker rm -f $DOCK_Cont
        echo 'Container Removed'
fi

echo 'Cleaned Up'
