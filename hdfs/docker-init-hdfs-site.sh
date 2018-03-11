echo "<configuration>" > ${HDFS_SITE_XML:=${HADOOP_CONF_DIR}/hdfs-site.xml}

if [ ${CORE_HDFS__DFS_DATANODE_DATA_DIR} ]; then
    echo "ANDAHME Applying Configuration - CORE_HDFS__DFS_DATANODE_DATA_DIR (${CORE_HDFS__DFS_DATANODE_DATA_DIR})"
    echo "    <property><name>dfs.datanode.data.dir</name><value>${CORE_HDFS__DFS_DATANODE_DATA_DIR}</value></property>" >> ${HDFS_SITE_XML}
fi

if [ ${HDFS_SITE__DFS_NAMENODE_NAME_DIR} ]; then
    echo "ANDAHME Applying Configuration - HDFS_SITE__DFS_NAMENODE_NAME_DIR (${HDFS_SITE__DFS_NAMENODE_NAME_DIR})"
    echo "    <property><name>dfs.namenode.name.dir</name><value>${HDFS_SITE__DFS_NAMENODE_NAME_DIR}</value></property>" >> ${HDFS_SITE_XML}
fi

if [ ${HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR} ]; then
    echo "ANDAHME Applying Configuration - HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR (${HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR})"
    echo "    <property><name>dfs.namenode.checkpoint.dir</name><value>${HDFS_SITE__DFS_NAMENODE_CHECKPOINT_DIR}</value></property>" >> ${HDFS_SITE_XML}
fi

if [ ${HDFS_SITE__DFS_PERMISSIONS_ENABLED} ]; then
    echo "ANDAHME Applying Configuration - HDFS_SITE__DFS_PERMISSIONS_ENABLED (${HDFS_SITE__DFS_PERMISSIONS_ENABLED})"
    echo "    <property><name>dfs.permissions.enabled</name><value>${HDFS_SITE__DFS_PERMISSIONS_ENABLED}</value></property>" >> ${HDFS_SITE_XML}
fi

if [ ${HDFS_SITE__DFS_REPLICATION} ]; then
    echo "ANDAHME Applying Configuration - HDFS_SITE__DFS_REPLICATION (${HDFS_SITE__DFS_REPLICATION})"
    echo "    <property><name>dfs.replication</name><value>${HDFS_SITE__DFS_REPLICATION}</value></property>" >> ${HDFS_SITE_XML}
fi

echo "</configuration>" >> ${HDFS_SITE_XML}

