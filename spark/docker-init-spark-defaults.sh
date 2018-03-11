if [ ${SPARK_DEFAULTS__SPARK_DRIVER_EXTRAJAVAOPTIONS} ]; then
    echo "ANDAHME Applying Configuration - SPARK_DEFAULTS__SPARK_DRIVER_EXTRAJAVAOPTIONS (${SPARK_DEFAULTS__SPARK_DRIVER_EXTRAJAVAOPTIONS})"
    echo spark.driver.extraJavaOptions ${SPARK_DEFAULTS__SPARK_DRIVER_EXTRAJAVAOPTIONS} >> ${SPARK_HOME}/conf/spark-defaults.conf
fi

if [ ${SPARK_DEFAULTS__SPARK_MASTER} ]; then
    echo "ANDAHME Applying Configuration - SPARK_DEFAULTS__SPARK_MASTER (${SPARK_DEFAULTS__SPARK_MASTER})"
    echo spark.master ${SPARK_DEFAULTS__SPARK_MASTER} >> ${SPARK_HOME}/conf/spark-defaults.conf
fi

if [ ${SPARK_DEFAULTS__SPARK_SQL_WAREHOUSE_DIR} ]; then
    echo "ANDAHME Applying Configuration - SPARK_DEFAULTS__SPARK_SQL_WAREHOUSE_DIR (${SPARK_DEFAULTS__SPARK_SQL_WAREHOUSE_DIR})"
    echo spark.sql.warehouse.dir ${SPARK_DEFAULTS__SPARK_SQL_WAREHOUSE_DIR} >> ${SPARK_HOME}/conf/spark-defaults.conf
fi

if [ ${SPARK_DEFAULTS__SPARK_YARN_AM_MEMORY} ]; then
    echo "ANDAHME Applying Configuration - SPARK_DEFAULTS__SPARK_YARN_AM_MEMORY (${SPARK_DEFAULTS__SPARK_YARN_AM_MEMORY})"
    echo spark.yarn.am.memory ${SPARK_DEFAULTS__SPARK_YARN_AM_MEMORY} >> ${SPARK_HOME}/conf/spark-defaults.conf
fi

