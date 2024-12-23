#!/bin/sh

# Wait for NFS server to be ready (optional)
sleep 5

# Mount the NFS share
mount -o nolock kiba:/exports /mnt/shared_volume

# Keep container running
tail -f /dev/null
