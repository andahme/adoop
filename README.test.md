## CLIENTS

### HDFS
```bash
docker run -it --rm \
    --user daemon \
    --network ${NETWORK} \
    -e CORE_SITE__FS_DEFAULTFS="hdfs://nn:9000" \
    -v ${PWD}:/work \
    andahme/hadoop /bin/bash
```

### Beeline
```bash
docker run -it --rm \
    --network ${NETWORK} \
    --user hive \
    adoop/hive:snap beeline -u jdbc:hive2://hive-server:10000
```

### CREATE DATABASE
create table yoomya (
 foo INT,
 bar STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

### INSERT DATA
insert into table yoomya values (1, "red");


### QUERY DATA
select * from yoomya;




## LOCAL->HDFS->HIVE

### UPLOAD: LOCAL -> HDFS
hdfs dfs -mkdir /user/daemon

hdfs dfs -put ml-100k /user/daemon

### HIVE: CREATE TABLE
CREATE TABLE u_data (
 userid INT,
 movieid INT,
 rating INT,
 unixtime STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

### BEELINE: LOAD DATA
LOAD DATA INPATH '/user/daemon/ml-100k/u.data' OVERWRITE INTO TABLE u_data;



## LOCAL->HIVE

# HQL
LOAD DATA LOCAL INPATH '/work/ml-100k/u.data' OVERWRITE INTO TABLE u_data;

