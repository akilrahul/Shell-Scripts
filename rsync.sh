#!/bin/bash
SOURCE="/path/to/source/file"
USER="username"
DEST_IP="192.168.1.10"
DEST_PATH="/path/to/destination/"
echo "Starting backup using rsync..."
rsync -avz "$SOURCE" "$USER@$DEST_IP:$DEST_PATH"
if [ $? -eq 0 ]; then
echo "✅ Backup completed successfully"
else
echo "❌ Backup failed"
fi
