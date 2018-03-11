ARG INPUT_ADOOP_VERSION

ARG INPUT_HIVE_VERSION=2.3.2

ARG INPUT_HIVE_ARTIFACT=http://mirrors.ocf.berkeley.edu/apache/hive/hive-${INPUT_HIVE_VERSION}/apache-hive-${INPUT_HIVE_VERSION}-bin.tar.gz



FROM andahme/debian AS distribution

ARG INPUT_HIVE_ARTIFACT

ARG INPUT_HIVE_VERSION


ADD ${INPUT_HIVE_ARTIFACT} /tmp/hive-${INPUT_HIVE_VERSION}.tar.gz

RUN tar -zxf /tmp/hive-${INPUT_HIVE_VERSION}.tar.gz -C /opt --strip-component=1 && \
    chmod 777 /opt/conf



FROM adoop/hadoop:${INPUT_ADOOP_VERSION} AS hive

ARG INPUT_HIVE_VERSION


ENV HIVE_HOME /opt/hive-${INPUT_HIVE_VERSION}

ENV HIVE_SITE_XML ${HIVE_HOME}/conf/hive-site.xml

ENV PATH ${HIVE_HOME}/bin:${PATH}


COPY --from=distribution /opt ${HIVE_HOME}

COPY docker-init-hive-site.sh /docker-init/docker-init-hive-site.sh


RUN useradd --comment "Hive Process User" --create-home --uid 1011 hive


USER hive

