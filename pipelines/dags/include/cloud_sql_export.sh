export CLOUDSQL_NAME=mysql-instance-source-data
export BUCKET_NAME=simple-dwh-bucket

gcloud sql export csv $CLOUDSQL_NAME \
gs://$BUCKET_NAME/mysql_export/stations/20180101/stations.csv \
--database=apps_db \
--offload \
--query='select * from stations where station_id <= 200;'

gcloud sql export csv $CLOUDSQL_NAME \
gs://$BUCKET_NAME/mysql_export/stations/20180102/stations.csv \
--database=apps_db \
--offload \
--query='select * from stations where station_id <= 400;'