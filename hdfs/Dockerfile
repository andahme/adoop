ARG INPUT_ADOOP_VERSION



FROM adoop/hadoop:${INPUT_ADOOP_VERSION} as hdfs


COPY docker-init-hdfs-site.sh /docker-init/docker-init-hdfs-site.sh


RUN groupadd supergroup

RUN useradd --comment "HDFS Process User" --system --uid 511 hdfs && \
    usermod -a -G supergroup hdfs

RUN useradd hive && \
    usermod -a -G supergroup hive

RUN useradd spark && \
    usermod -a -G supergroup spark


USER hdfs

