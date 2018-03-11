# adoop - a Docker based Hadoop distribution
**NOTE**: This project uses andahme/dccu to manage docker-compose profiles.

### DCCU: Generate docker-compose.override.yml
> docker-compose $(dccu hdfs yarn hive spark) config > docker-compose.override.yml

### HDFS
```bash
docker-compose run -T name-node-format && \
  docker-compose up -d name-node && \
  docker-compose up -d data-node && \
  docker-compose run -T init-hdfs-base
```

### YARN
> docker-compose up -d resource-manager node-manager

### HIVE
```bash
docker-compose up -d metastore-db && \
  docker-compose run -T init-hdfs-hive && \
  docker-compose run -T hive-metastore-db-schema && \
  docker-compose up -d hive-metastore && \
  docker-compose up -d hive-server
```

### SPARK
> docker-compose run -T init-hdfs-spark


## Clients

### SPARK SHELL
> docker-compose run -p 127.0.0.1:4040:4040 spark-shell

### BEELINE
> docker-compose run beeline


# TEARDOWN
> docker-compose rm --stop --force



