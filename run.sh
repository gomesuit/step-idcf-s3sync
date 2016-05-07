#!/bin/bash

echo "$WERCKER_IDCF_S3SYNC_ACCESS_KEY"
echo "$WERCKER_IDCF_S3SYNC_SECRET_KEY"
echo "$WERCKER_IDCF_S3SYNC_HOST_BASE"
echo "$WERCKER_IDCF_S3SYNC_HOST_BUCKET"

s3cfg="$HOME/.s3cfg"

echo "access_key=$WERCKER_IDCF_S3SYNC_ACCESS_KEY" >> "$s3cfg"
echo "secret_key=$WERCKER_IDCF_S3SYNC_SECRET_KEY" >> "$s3cfg"
echo "host_bucket=$WERCKER_IDCF_S3SYNC_HOST_BASE" >> "$s3cfg"
echo "access_key=$WERCKER_IDCF_S3SYNC_HOST_BUCKET" >> "$s3cfg"
