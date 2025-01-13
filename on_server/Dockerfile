# Base image
FROM ubuntu:20.04

# Set non-interactive frontend for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Install NFS and rpcbind
RUN apt-get update && apt-get install -y --no-install-recommends \
    nfs-kernel-server rpcbind && \
    rm -rf /var/lib/apt/lists/*

# Create export directory
RUN mkdir -p /exports && chmod 777 /exports

# Add NFS exports configuration
RUN echo "/exports *(rw,sync,no_subtree_check,no_root_squash)" > /etc/exports

# Default to bash for debugging
CMD ["bash"]
