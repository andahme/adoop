#!/bin/bash -e

for DOCKER_INIT_SCRIPT in /docker-init/*; do
    . ${DOCKER_INIT_SCRIPT}
done


if [[ $# == 2 && $1 == "spark-class" && $2 == "org.apache.spark.deploy.worker.Worker" && ${SPARK_MASTER} ]]; then
    exec $@ ${SPARK_MASTER}
fi


exec $@

