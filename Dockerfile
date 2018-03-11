ARG INPUT_HADOOP_VERSION



FROM andahme/hadoop:${INPUT_HADOOP_VERSION} as hadoop


RUN mkdir /docker-init

COPY docker-init-core-site.sh /docker-init/docker-init-core-site.sh

COPY docker-entrypoint.sh /docker-entrypoint.sh


RUN mkdir /data && \
    chmod 777 /data


VOLUME /tmp


ENTRYPOINT [ "/docker-entrypoint.sh" ]

