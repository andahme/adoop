ARG INPUT_ADOOP_VERSION



FROM adoop/hadoop:${INPUT_ADOOP_VERSION} as yarn


COPY docker-init-yarn-site.sh /docker-init/docker-init-yarn-site.sh


RUN useradd --comment "YARN Process User" --system --uid 511 yarn


USER yarn

