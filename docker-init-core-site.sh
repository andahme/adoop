echo "<configuration>" > ${CORE_SITE_XML:=${HADOOP_CONF_DIR}/core-site.xml}

if [ ${CORE_SITE__FS_DEFAULTFS} ]; then
    echo "ANDAHME Applying Configuration - CORE_SITE__FS_DEFAULTFS (${CORE_SITE__FS_DEFAULTFS})"
    echo "    <property><name>fs.defaultFS</name><value>${CORE_SITE__FS_DEFAULTFS}</value></property>" >> ${CORE_SITE_XML}
fi

if [ ${CORE_SITE__HADOOP_PROXYUSER} ]; then
    echo "ANDAHME Applying Configuration - CORE_SITE__HADOOP_PROXYUSER (${CORE_SITE__HADOOP_PROXYUSER})"
    echo "    <property><name>hadoop.proxyuser.${CORE_SITE__HADOOP_PROXYUSER}.groups</name><value>*</value></property>" >> ${CORE_SITE_XML}
    echo "    <property><name>hadoop.proxyuser.${CORE_SITE__HADOOP_PROXYUSER}.hosts</name><value>*</value></property>" >> ${CORE_SITE_XML}
fi

echo "</configuration>" >> ${CORE_SITE_XML}

