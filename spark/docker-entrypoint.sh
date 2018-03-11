#!/bin/bash -e

for DOCKER_INIT_SCRIPT in /docker-init/*; do
    . ${DOCKER_INIT_SCRIPT}
done


exec $@

