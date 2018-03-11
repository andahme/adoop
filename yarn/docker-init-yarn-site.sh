echo "<configuration>" > ${YARN_SITE_XML:=${HADOOP_CONF_DIR}/yarn-site.xml}

if [ ${YARN_SITE__YARN_NODEMANAGER_VMEM_CHECK_ENABLED} ]; then
    echo "ANDAHME Applying Configuration - YARN_SITE__YARN_NODEMANAGER_VMEM_CHECK_ENABLED (${YARN_SITE__YARN_NODEMANAGER_VMEM_CHECK_ENABLED})"
    echo "    <property><name>yarn.nodemanager.vmem-check-enabled</name><value>${YARN_SITE__YARN_NODEMANAGER_VMEM_CHECK_ENABLED}</value></property>" >> ${YARN_SITE_XML}
fi

if [ ${YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME} ]; then
    echo "ANDAHME Applying Configuration - YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME (${YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME})"
    echo "    <property><name>yarn.resourcemanager.hostname</name><value>${YARN_SITE__YARN_RESOURCEMANAGER_HOSTNAME}</value></property>" >> ${YARN_SITE_XML}
fi

echo "</configuration>" >> ${YARN_SITE_XML}

