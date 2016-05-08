#!/bin/bash

echo "$WERCKER_IDCF_S3SYNC_ACCESS_KEY"
echo "$WERCKER_IDCF_S3SYNC_SECRET_KEY"
echo "$WERCKER_IDCF_S3SYNC_HOST_BASE"
echo "$WERCKER_IDCF_S3SYNC_HOST_BUCKET"

s3cfg="$HOME/.s3cfg"

{
  echo "access_key=$WERCKER_IDCF_S3SYNC_ACCESS_KEY"
  echo "secret_key=$WERCKER_IDCF_S3SYNC_SECRET_KEY"
  echo "host_bucket=$WERCKER_IDCF_S3SYNC_HOST_BASE"
  echo "access_key=$WERCKER_IDCF_S3SYNC_HOST_BUCKET"
} >> "$s3cfg"


source_dir="$WERCKER_ROOT/$WERCKER_IDCF_S3SYNC_SOURCE_DIR"

#"$WERCKER_STEP_ROOT/s3cmd" sync --verbose ./ "$WERCKER_S3SYNC_BUCKET_URL"

#"$WERCKER_STEP_ROOT/s3cmd" put -r --verbose "$source_dir" s3://gomesuit/test/

"$WERCKER_STEP_ROOT/s3cmd" put -r --verbose "$source_dir" "$WERCKER_IDCF_S3SYNC_BUCKET_URL"
