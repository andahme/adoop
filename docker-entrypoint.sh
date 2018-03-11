#!/bin/bash -e


for DOCKER_INIT_SCRIPT in /docker-init/*.sh; do
    . ${DOCKER_INIT_SCRIPT}
done


exec $@
