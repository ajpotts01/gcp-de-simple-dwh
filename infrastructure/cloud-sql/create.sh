export MYSQL_VERSION=MYSQL_5_7
export CLOUDSQL_TIER=db-g1-small
export CLOUDSQL_REGION=australia-southeast1
export CLOUDSQL_AVAILABILITY=zonal
export CLOUDSQL_STORAGE=10GB
export CLOUDSQL_STORAGE_TYPE=HDD
export CLOUDSQL_NAME=mysql-instance-source-data

gcloud sql instances create $CLOUDSQL_NAME \
--database-version=$MYSQL_VERSION \
--region=$CLOUDSQL_REGION \
--root-password=$1
--availability-type=$CLOUDSQL_AVAILABILITY \
--storage-size=$CLOUDSQL_STORAGE \
--storage-type=$CLOUDSQL_STORAGE_TYPE