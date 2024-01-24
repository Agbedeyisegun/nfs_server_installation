

# Client Setup

This document provides step-by-step instructions for setting up NFS clients to connect to your NFS server. Follow these steps to enable your clients to access and use the shared directories on the NFS server.

## requirement

Before proceeding with the client setup, ensure that:

- The NFS server is up and running.
- You have the necessary credentials(like permissions) to access shared directories on the server.

## Step 1: Install NFS Client Package

Install the NFS client package on your client machine. The package name may vary depending on your Linux distribution.

For example, on Ubuntu/Debian while on centos is " sudo yum install nfs-utils -y"  The "-y" is for installation of dependencies that it is needed:

step 1

```bash
sudo apt install nfs-common -y

# step 2 
# This will help will create the directories that the server will be mount on;

sudo mkdir /mnt/nfs/sharedDocs
sudo mkdir /mnt/nfs/backups

# step 3 
# This will mount the server "/exports/sharedDocs" to this /mnt/nfs/sharedDocs Directory and backups respectively

sudo mount 192.168.88.10:/exports/sharedDocs /mnt/nfs/sharedDocs
sudo mount 192.168.88.10:/exports/backups /mnt/nfs/backups

# step 4 

# This is step is optional, it is because it is just to make automate Mount on boot
# have to make it entry in /etc/fstab file like below:
# the ip provided is for the server and the and the server directory then the mount point in the client,type is "nfs" "defaults" and "0" "0" entry meanwhile remember to do this with elivated privilege because only sudo user can do this.

192.168.88.10:exports/sharedDocs /mnt/nfs/sharedDocs nfs defaults 0 0
192.168.88.10:exports/backups /mnt/nfs/backups nfs defaults 0 0




# step 5 
# This will check the mount for the particular server_ip "192.168.88.10"

df -h | grep server_ip



















