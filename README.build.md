# GENERATE OVERRIDE
# *NOTE*: dccu is bash shell function which prints docker-compose documents
docker-compose $(dccu) config > docker-compose.override.yml

docker-compose $(dccu hdfs yarn hive spark) config > docker-compose.override.yml

# BUILD
docker-compose \
  -f docker-compose.override.yml \
  -f docker-compose.build.yml \
  build



