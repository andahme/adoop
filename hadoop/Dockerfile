ARG INPUT_HADOOP_VERSION=2.8.1

ARG INPUT_HADOOP_ARTIFACT=http://apache.spinellicreations.com/hadoop/common/hadoop-${INPUT_HADOOP_VERSION}/hadoop-${INPUT_HADOOP_VERSION}.tar.gz


# TARGET: DISTRIBUTION
FROM andahme/debian AS distribution

ARG INPUT_HADOOP_ARTIFACT

ARG INPUT_HADOOP_VERSION



COPY ${INPUT_HADOOP_ARTIFACT} /tmp/hadoop-${INPUT_HADOOP_VERSION}.tar.gz

RUN tar -zxf /tmp/hadoop-${INPUT_HADOOP_VERSION}.tar.gz -C /opt --strip-component=1

COPY etc/hadoop/core-site.xml.template /opt/etc/hadoop

COPY etc/hadoop/hdfs-site.xml.template /opt/etc/hadoop

COPY etc/hadoop/mapred-site.xml.template /opt/etc/hadoop

COPY etc/hadoop/yarn-site.xml.template /opt/etc/hadoop



# TARGET: IMAGE
FROM andahme/openjdk:jre-8 AS image

ARG INPUT_HADOOP_VERSION


ENV HADOOP_VERSION=${INPUT_HADOOP_VERSION}

ENV HADOOP_HOME=/opt/hadoop-${HADOOP_VERSION}

ENV PATH=${PATH}:${HADOOP_HOME}/bin


RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install --yes --no-install-recommends procps

COPY --from=distribution /opt ${HADOOP_HOME}

COPY docker-entrypoint.sh /docker-entrypoint.sh


ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "/bin/bash" ]


