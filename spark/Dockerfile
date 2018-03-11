ARG INPUT_SPARK_VERSION



FROM andahme/spark:${INPUT_SPARK_VERSION} AS spark

ENV SPARK_PUBLIC_DNS localhost


RUN mkdir /docker-init

COPY docker-init-core-site.sh /docker-init/docker-init-core-site.sh

COPY docker-init-hive-site.sh /docker-init/docker-init-hive-site.sh

COPY docker-init-spark-defaults.sh /docker-init/docker-init-spark-defaults.sh

COPY docker-init-yarn-site.sh /docker-init/docker-init-yarn-site.sh

COPY docker-entrypoint.sh /docker-entrypoint.sh


RUN useradd --comment "Spark User" --create-home --uid 1011 spark


VOLUME /tmp


ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "/bin/bash" ]

