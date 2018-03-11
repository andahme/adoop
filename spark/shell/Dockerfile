ARG INPUT_ARSK_VERSION



FROM adoop/spark:${INPUT_ARSK_VERSION} as spark-shell

EXPOSE 4040


ENV SPARK_LOCAL_DIRS /tmp

ENV YARN_CONF_DIR ${SPARK_HOME}/conf


RUN mkdir /workspace && \
    chmod 777 /workspace && \
    chown spark:spark /workspace


WORKDIR /workspace

CMD [ "spark-shell" ]

USER spark

