#!/bin/bash -e


if [ ${CORE_SITE__FS_DEFAULTFS} ]; then
    echo "ANDAHME Applying Configuration - CORE_SITE__FS_DEFAULTFS (${CORE_SITE__FS_DEFAULTFS})"
    sed "s|%%CORE_SITE__FS_DEFAULTFS%%|${CORE_SITE__FS_DEFAULTFS}|g" ${HADOOP_HOME}/etc/hadoop/core-site.xml.template > ${HADOOP_HOME}/etc/hadoop/core-site.xml
fi

if [ ${HDFS_SITE__DFS_REPLICATION} ]; then
    echo "ANDAHME Applying Configuration - HDFS_SITE__DFS_REPLICATION (${HDFS_SITE__DFS_REPLICATION})"
    sed s/%%HDFS_SITE__DFS_REPLICATION%%/${HDFS_SITE__DFS_REPLICATION}/g ${HADOOP_HOME}/etc/hadoop/hdfs-site.xml.template > ${HADOOP_HOME}/etc/hadoop/hdfs-site.xml
fi

if [ ${MAPRED_SITE__YARN_RESOURCEMANAGER_HOSTNAME} ]; then
    echo "ANDAHME Applying Configuration - MAPRED_SITE__MAPREDUCE_FRAMEWORK_NAME (${MAPRED_SITE__MAPREDUCE_FRAMEWORK_NAME})"
    sed s/%%MAPRED_SITE__MAPREDUCE_FRAMEWORK_NAME%%/${MAPRED_SITE__MAPREDUCE_FRAMEWORK_NAME}/g ${HADOOP_HOME}/etc/hadoop/mapred-site.xml.template > ${HADOOP_HOME}/etc/hadoop/mapred-site.xml
fi

if [ ${YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME} ]; then
    echo "ANDAHME Applying Configuration - YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME (${YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME})"
    sed s/%%YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME%%/${YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME}/g ${HADOOP_HOME}/etc/hadoop/yarn-site.xml.template > ${HADOOP_HOME}/etc/hadoop/yarn-site.xml
fi


COMMAND=$1; shift
case ${COMMAND} in
    namenode)
        if [ ! -d /tmp/hadoop-root/dfs/name/current ]; then
            echo ANDAHME Formatting NameNode...
            ${HADOOP_HOME}/bin/hdfs namenode -format
        fi

        echo ANDAHME Starting NameNode...
        ${HADOOP_HOME}/bin/hdfs namenode
        ;;

    secondarynamenode)
        echo ANDAHME Starting SecondaryNameNode...
        ${HADOOP_HOME}/bin/hdfs secondarynamenode
        ;;

    datanode)
        echo ANDAHME Starting DataNode...
        ${HADOOP_HOME}/bin/hdfs datanode
        ;;

    resourcemanager)
        echo ANDAHME Starting ResourceManager...
        ${HADOOP_HOME}/bin/yarn resourcemanager
        ;;

    nodemanager)
        echo ANDAHME Starting NodeManager...
        ${HADOOP_HOME}/bin/yarn nodemanager
        ;;

    *)
        exec ${COMMAND} $@
        ;;
esac


