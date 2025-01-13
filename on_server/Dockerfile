# Dockerfile
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required packages
RUN apt-get update && \
    apt-get install -y nfs-kernel-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create a directory for NFS export
RUN mkdir -p /export/nfs

# Set permissions for the export directory
RUN chown nobody:nogroup /export/nfs && chmod 777 /export/nfs

# Add export configuration
RUN echo "/export/nfs *(rw,sync,no_subtree_check,no_root_squash)" > /etc/exports

# Expose NFS-related ports
EXPOSE 111/udp 111/tcp 2049/tcp 2049/udp 32765/udp 32765/tcp

# Default command
CMD ["bash"]