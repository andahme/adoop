1. hdfs + yarn + hive + spark

# HDFS
docker-compose run -T name-node-format && \
  docker-compose up -d name-node && \
  docker-compose up -d data-node && \
  docker-compose run -T init-hdfs-base

# YARN
docker-compose up -d resource-manager node-manager

# HIVE
docker-compose up -d metastore-db && \
  docker-compose run -T init-hdfs-hive && \
  docker-compose run -T hive-metastore-db-schema && \
  docker-compose up -d hive-metastore && \
  docker-compose up -d hive-server

# SPARK
docker-compose run -T init-hdfs-spark




## SPARK SHELL
docker-compose run -p 127.0.0.1:4040:4040 spark-shell


# BEELINE
docker-compose run beeline

docker run -it --rm \
  --network ${NETWORK} \
  -e HIVE_SITE__HIVE_METASTORE_URIS=thrift://hive-metastore:9083 \
  arsk/shell:2.2.1 spark-shell





# TEARDOWN
docker-compose rm --stop --force



