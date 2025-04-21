#!/bin/bash

# Configuration
BUCKET_MOUNT=~/gcs-bucket
SOURCE_DIR=~/backup-source
LOG_FILE=~/my-ace-backup/backup.log
BUCKET_NAME=mock-client-data

# Ensure bucket is mounted
if ! mountpoint -q "$BUCKET_MOUNT"; then
    echo "$(date): Mounting $BUCKET_NAME..." >> "$LOG_FILE"
    gcsfuse "$BUCKET_NAME" "$BUCKET_MOUNT" || {
        echo "$(date): Failed to mount $BUCKET_NAME" >> "$LOG_FILE"
        exit 1
    }
fi

# Perform backup
echo "$(date): Starting backup from $SOURCE_DIR to $BUCKET_MOUNT" >> "$LOG_FILE"
cp -r "$SOURCE_DIR"/* "$BUCKET_MOUNT" 2>> "$LOG_FILE"
if [ $? -eq 0 ]; then
    echo "$(date): Backup completed successfully" >> "$LOG_FILE"
else
    echo "$(date): Backup failed" >> "$LOG_FILE"
    exit 1
fi
