# Configuration

In this section, I'll cover the configuration of the NFS server. The main configuration file for NFS is `/etc/exports`. This file defines the directories to be shared and the access permissions granted to NFS client(s).

## NFS Server Configuration File


The primary configuration file for NFS is `/etc/exports`. Let's take a closer look at how you can configure this file:


### Example Configuration Entry


To share a directory `/sharedDocs` and '/backups' with a client having the IP address -sample ip `192.168.88.100` with read, write and execution permissions, the entry in `/etc/exports` would look like this:


```plaintext

exports/sharedDocs 192.168.88.100(rw,sync,no_subtree_check)
exports/backups 192.168.88.100(rw,sync,no_subtree_check)



"/sharedDocs": The path to the directory you want to share.
"192.168.88.100": The IP address of the client.
"(rw,sync,no_subtree_check)": Options specifying read and write permissions, synchronization, and disabling subtree checking.


Additional Configuration Options
You can customize your configuration entries based on your requirements. Here are some common options:

"ro": Read-only access.
"async": Asynchronous writes for better performance.
"insecure": Allows clients to connect from unprivileged ports.
