#!/bin/bash

echo "$WERCKER_IDCF_S3SYNC_ACCESS_KEY"
echo "$WERCKER_IDCF_S3SYNC_SECRET_KEY"
echo "$WERCKER_IDCF_S3SYNC_HOST_BASE"
echo "$WERCKER_IDCF_S3SYNC_HOST_BUCKET"

s3cfg="$HOME/.s3cfg"

cp "$WERCKER_STEP_ROOT/s3cfg" "$s3cfg"

{
  echo "access_key=$WERCKER_IDCF_S3SYNC_ACCESS_KEY"
  echo "secret_key=$WERCKER_IDCF_S3SYNC_SECRET_KEY"
  echo "host_base=$WERCKER_IDCF_S3SYNC_HOST_BASE"
  echo "host_bucket=$WERCKER_IDCF_S3SYNC_HOST_BUCKET"
} >> "$s3cfg"


cat "$s3cfg"

source_dir="$WERCKER_ROOT/$WERCKER_IDCF_S3SYNC_SOURCE_DIR"

"$WERCKER_STEP_ROOT/s3cmd" put -r --verbose "$source_dir" "$WERCKER_IDCF_S3SYNC_BUCKET_URL"
