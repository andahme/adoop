#!/bin/bash

hdfs dfs -mkdir /tmp/hive
hdfs dfs -chmod 777 /tmp/hive

hdfs dfs -mkdir /user/hive
hdfs dfs -chown hive /user/hive

