\# Permission Auditor



\## Approach



The `permission\_auditor.sh` script recursively scans a directory provided as a command-line argument.



It identifies potentially insecure files based on three conditions:



1\. Files with 777 permissions.

2\. Files owned by root.

3\. Files with the SUID bit set.



The script uses the `find` utility to recursively search the supplied directory.



An associative array is used to keep track of unique suspicious files, so a file matching multiple conditions is counted only once.



\## Commands and Utilities Used



\- `find` - Recursively searches for files based on permissions and ownership.

\- Bash associative arrays - Stores suspicious file paths uniquely.

\- Command-line arguments - Specifies the directory to scan.

\- `chmod` - Makes the script executable.



\## Usage



```bash

./permission\_auditor.sh <directory>

