ARG INPUT_ADOOP_VERSION



FROM adoop/hdfs:${INPUT_ADOOP_VERSION} AS hdfs-secondary-name-node

EXPOSE 50090


ENV HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR /data/dfs/namesecondary


RUN mkdir -p ${HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR} && \
    chmod -R 777 ${HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR}


VOLUME ${HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR}


CMD [ "hdfs", "secondarynamenode" ]

