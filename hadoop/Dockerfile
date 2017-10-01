ARG INPUT_HADOOP_VERSION=2.8.1


# TARGET: DISTRIBUTION
FROM andahme/debian AS distribution

ARG INPUT_HADOOP_VERSION


#COPY hadoop-${INPUT_HADOOP_VERSION}.tar.gz /opt
ADD http://apache.spinellicreations.com/hadoop/common/hadoop-${INPUT_HADOOP_VERSION}/hadoop-${INPUT_HADOOP_VERSION}.tar.gz /opt

RUN tar -zxf /opt/hadoop-${INPUT_HADOOP_VERSION}.tar.gz -C /tmp --strip-component=1



# TARGET: IMAGE
FROM andahme/openjdk AS image

ARG INPUT_HADOOP_VERSION


ENV HADOOP_VERSION=${INPUT_HADOOP_VERSION}

ENV HADOOP_HOME=/opt/hadoop-${HADOOP_VERSION}

ENV PATH=${PATH}:${HADOOP_HOME}/bin


COPY --from=distribution /tmp ${HADOOP_HOME}


