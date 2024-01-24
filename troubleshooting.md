# Troubleshooting

Your NFS client is now set up to access the shared directories from the NFS server. However, if you encounter any issues during the setup or usage, refer to the following troubleshooting tips:

## Connection Issues

### Symptom: Unable to mount NFS share

- **Check Network Connectivity:**
  Ensure that your client can reach the NFS server. Verify the network connection and try to ping the server.

  ```bash
  ping server_ip


## Permission Issues

### Symptom: Permission denied when accessing NFS share

- **Check Exported Directories:

   Confirm that the directories are correctly exported in the server's /etc/exports file.

  verify Permissions:

    Ensure that permissions on the server's shared directories allow the NFS client to access them. Use the ls -l command on the server to verify permission

  
    ```bash
    ls -l /path/to/shared_directory



