export DEST_BUCKET_NAME=simple-dwh-bucket

gsutil iam ch serviceAccount:"$1":roles/storage.objectViewer gs://$DEST_BUCKET_NAME