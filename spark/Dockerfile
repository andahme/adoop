ARG INPUT_SPARK_VERSION=2.2.0

ARG INPUT_SPARK_ARTIFACT=http://apache.spinellicreations.com/spark/spark-${INPUT_SPARK_VERSION}/spark-${INPUT_SPARK_VERSION}-bin-hadoop2.7.tgz


# TARGET: DISTRIBUTION
FROM andahme/debian AS distribution

ARG INPUT_SPARK_ARTIFACT

ARG INPUT_SPARK_VERSION


COPY ${INPUT_SPARK_ARTIFACT} /tmp/spark-${INPUT_SPARK_VERSION}.tar.gz

RUN tar -zxf /tmp/spark-${INPUT_SPARK_VERSION}.tar.gz -C /opt --strip-component=1



# TARGET: IMAGE
FROM andahme/hadoop AS image

ARG INPUT_SPARK_VERSION


ENV SPARK_VERSION=${INPUT_SPARK_VERSION}

ENV SPARK_HOME=/opt/spark-${SPARK_VERSION}

ENV PATH=${PATH}:${SPARK_HOME}/bin


RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install --yes --no-install-recommends python

COPY --from=distribution /opt ${SPARK_HOME}


