#!/bin/bash

# Update system packages


sudo apt update && sudo apt upgrade -y

# Check if NFS is installed
if ! command -v nfs-kernel-server &> /dev/null
then
    # NFS server is not install, Installation start in 2mins

sleep 2 

    sudo apt install nfs-kernel-server -y
fi

# Create sharedDocs directory
sudo mkdir -p /iexports/sharedDocs

# Create backup directory
sudo mkdir -p /exports/backups


# Set permissions for sharedDocs and backups

sudo chmod -R 777 /exports/sharedDocs
sudo chmod -R 777 /exports/backup

# Allowing NFS access to the directories edditing --->>>  /etc/exports file

sleep 2

echo "/exports/sharedDocs 192.168.88.100(rw,sync,no_subtree_check)" | sudo tee -a /etc/exports
echo "/exports/backups 192.168.88.100(rw,sync,no_subtree_check)" | sudo tee -a /etc/exports


# Restarting NFS server for all changes to take effect applying changes --->>>

sudo systemctl restart nfs-kernel-server


echo "Setup complete. Shared directories 'sharedDocs' and 'backups' created with necessary permissions."

