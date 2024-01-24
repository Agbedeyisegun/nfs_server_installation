#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Check if NFS client is installed
if ! dpkg -l | grep nfs-common &> /dev/null
then
    # Installation of NFS client begins in 2mins
    sudo apt install nfs-common -y
fi

# Create sharedDocs and backups directories
sudo mkdir -p /mnt/nfs/sharedDocs
sudo mkdir -p /mnt/nfs/backups


# Mount sharedDocs
sudo mount -t nfs 192.168.88.10:/exports/sharedDocs /mnt/nfs/sharedDocs

# Mount backups
sudo mount -t nfs 192.168.88.10:/exports/backups /mnt/nfs/backups

# Display lsblk as evidence

lsblk

echo "Setup complete. Directories 'sharedDocs' and 'backups' mounted on /mnt/nfs/."

