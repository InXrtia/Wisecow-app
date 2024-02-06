#!/bin/bash

# Directory to back up:-
source_dir="/path/to/source/directory"

# Destination directory on the remote server
remote_destination="user@remote_server:/path/to/remote/destination"
#I have used AWS S3 as remote path to store.

# Log file to store backup report
log_file="/path/to/backup.log"

# using rsync we perform the backup option
rsync -avz --delete "$source_dir" "$remote_destination" >> "$log_file" 2>&1

# Check the exit status of rsync
if [ $? -eq 0 ]; then
    echo "Backup completed successfully. See $log_file for details."
else
    echo "Backup failed. See $log_file for details."
fi
# Replace the /path/to/source/directory, user@remote_server:/path/to/remote/destination, and /path/to/backup.log with your actual source directory, remote destination, and desired log file path respectively.
# set executable permissions on the script using 'chmod +x backupscript.sh' and then execute it with './backupscript.sh'.
# Make sure ti install ssh and rsync.
