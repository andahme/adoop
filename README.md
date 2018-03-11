# adoop - a Docker based Hadoop distribution

## Quick Start

### Generate docker-compose.override.yml
**NOTE**: This project uses [andahme/dccu](https://github.com/andahme/dccu) to manage docker-compose profiles.
```bash
docker-compose $(dccu hdfs yarn hive spark) config > docker-compose.override.yml
```

### HDFS
```bash
docker-compose run -T name-node-format && \
  docker-compose up -d name-node && \
  docker-compose up -d data-node && \
  docker-compose run -T init-hdfs-base
```

### Yarn
```bash
docker-compose up -d resource-manager node-manager
```

### Hive
```bash
docker-compose up -d metastore-db && \
  docker-compose run -T init-hdfs-hive && \
  docker-compose run -T hive-metastore-db-schema && \
  docker-compose up -d hive-metastore && \
  docker-compose up -d hive-server
```

### Spark
```bash
docker-compose run -T init-hdfs-spark
```

## Clients

### Spark Shell
```bash
docker-compose run -p 127.0.0.1:4040:4040 spark-shell
```

### Beeline
```bash
docker-compose run beeline
```


## Teardown
```bash
docker-compose rm --stop --force
```

