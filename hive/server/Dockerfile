ARG INPUT_ADOOP_VERSION



FROM adoop/hive:${INPUT_ADOOP_VERSION} AS hive-server

EXPOSE 10000

EXPOSE 10002


CMD [ "hive", "--service", "hiveserver2" ]

