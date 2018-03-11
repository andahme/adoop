echo "<configuration>" > ${HIVE_SITE_XML:=${SPARK_CONF_DIR}/hive-site.xml}

#echo "    <property><name>hive.metastore.sasl.enabled</name><value>false</value></property>" >> ${HIVE_SITE_XML}
#echo "    <property><name>hive.server2.authentication</name><value>NONE</value></property>" >> ${HIVE_SITE_XML}

if [ ${HIVE_SITE__HIVE_SERVER2_ENABLE_DOAS} ]; then
    echo "ANDAHME Applying Configuration - HIVE_SITE__HIVE_SERVER2_ENABLE_DOAS (${HIVE_SITE__HIVE_SERVER2_ENABLE_DOAS})"
    echo "    <property><name>hive.server2.enable.doAs</name><value>${HIVE_SITE__HIVE_SERVER2_ENABLE_DOAS}</value></property>" >> ${HIVE_SITE_XML}
fi

if [ ${HIVE_SITE__HIVE_METASTORE_URIS} ]; then
    echo "ANDAHME Applying Configuration - HIVE_SITE__HIVE_METASTORE_URIS (${HIVE_SITE__HIVE_METASTORE_URIS})"
    echo "    <property><name>hive.metastore.uris</name><value>${HIVE_SITE__HIVE_METASTORE_URIS}</value></property>" >> ${HIVE_SITE_XML}
fi

if [ ${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONURL} ]; then
    echo "ANDAHME Applying Configuration - HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONURL (${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONURL})"
    echo "    <property><name>javax.jdo.option.ConnectionURL</name><value>${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONURL}</value></property>" >> ${HIVE_SITE_XML}
fi

if [ ${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONDRIVERNAME} ]; then
    echo "ANDAHME Applying Configuration - HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONDRIVERNAME (${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONDRIVERNAME})"
    echo "    <property><name>javax.jdo.option.ConnectionDriverName</name><value>${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONDRIVERNAME}</value></property>" >> ${HIVE_SITE_XML}
fi

if [ ${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONUSERNAME} ]; then
    echo "ANDAHME Applying Configuration - HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONUSERNAME (${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONUSERNAME})"
    echo "    <property><name>javax.jdo.option.ConnectionUserName</name><value>${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONUSERNAME}</value></property>" >> ${HIVE_SITE_XML}
fi

if [ ${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONPASSWORD} ]; then
    echo "ANDAHME Applying Configuration - HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONPASSWORD (********)"
    echo "    <property><name>javax.jdo.option.ConnectionPassword</name><value>${HIVE_SITE__JAVAX_JDO_OPTION_CONNECTIONPASSWORD}</value></property>" >> ${HIVE_SITE_XML}
fi

echo "</configuration>" >> ${HIVE_SITE_XML}

