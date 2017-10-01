ARG INPUT_SPARK_VERSION=2.2.0


# TARGET: DISTRIBUTION
FROM andahme/debian AS distribution

ARG INPUT_SPARK_VERSION


#COPY spark-${INPUT_SPARK_VERSION}-bin-hadoop2.7.tgz /opt
ADD http://apache.spinellicreations.com/spark/spark-${INPUT_SPARK_VERSION}/spark-${INPUT_SPARK_VERSION}-bin-hadoop2.7.tgz /opt

RUN tar -zxf /opt/spark-${INPUT_SPARK_VERSION}-bin-hadoop2.7.tgz -C /tmp --strip-component=1



# TARGET: IMAGE
FROM andahme/hadoop AS image

ARG INPUT_SPARK_VERSION


ENV SPARK_VERSION=${INPUT_SPARK_VERSION}

ENV SPARK_HOME=/opt/spark-${SPARK_VERSION}

ENV PATH=${PATH}:${SPARK_HOME}/bin


RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install --yes --no-install-recommends python

COPY --from=distribution /tmp ${SPARK_HOME}


