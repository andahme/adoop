ARG INPUT_ADOOP_VERSION



FROM adoop/hive:${INPUT_ADOOP_VERSION} AS hive-metastore

EXPOSE 9083


CMD [ "hive", "--service", "metastore" ]

