ARG INPUT_ARSK_VERSION



FROM adoop/spark:${INPUT_ARSK_VERSION} AS spark-worker

EXPOSE 8081


ENV SPARK_MASTER spark://spark-master:7077

ENV SPARK_WORKER_DIR /work


COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN mkdir ${SPARK_WORKER_DIR} && \
    chmod 777 ${SPARK_WORKER_DIR}


VOLUME ${SPARK_WORKER_DIR}


CMD [ "spark-class", "org.apache.spark.deploy.worker.Worker" ]

USER spark

