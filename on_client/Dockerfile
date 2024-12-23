FROM alpine:latest

# Install NFS client tools
RUN apk add --no-cache nfs-utils

# Create a mount point
RUN mkdir -p /mnt/shared_volume

# Add a script to mount the NFS share
COPY mount_nfs.sh /usr/local/bin/mount_nfs.sh
RUN chmod +x /usr/local/bin/mount_nfs.sh

CMD ["/bin/sh", "/usr/local/bin/mount_nfs.sh"]
