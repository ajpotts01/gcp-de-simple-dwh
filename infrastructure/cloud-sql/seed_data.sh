export CLOUDSQL_NAME=mysql-instance-source-data
export DEST_BUCKET_NAME=simple-dwh-bucket
export SEED_DATA_STATION=gs://$DEST_BUCKET_NAME/data/stations/stations.csv
export TARGET_DATABASE=apps_db
export TARGET_TABLE=stations

gcloud sql import csv $CLOUDSQL_NAME $SEED_DATA_STATION --database=$TARGET_DATABASE --table=$TARGET_TABLE