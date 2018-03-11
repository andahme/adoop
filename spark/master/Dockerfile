ARG INPUT_ARSK_VERSION



FROM adoop/spark:${INPUT_ARSK_VERSION} AS spark-master

EXPOSE 6066

EXPOSE 7077

EXPOSE 8080


CMD [ "spark-class", "org.apache.spark.deploy.master.Master" ]

USER spark

