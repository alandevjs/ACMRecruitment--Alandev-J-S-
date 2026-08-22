\# Directory Report Generator



\## Objective



This Bash script accepts a directory as input and generates a report.txt file containing useful file system statistics.



\## Statistics Generated



\- Total number of files

\- Total number of executable files

\- Largest file

\- Most recently modified file

\- Number of hidden files



\## Commands and Utilities Used



\- `find` - Searches for files and obtains file information.

\- `wc -l` - Counts files.

\- `sort` - Sorts file sizes and modification times.

\- `tail` - Selects the last entry.

\- `cut` - Extracts file paths.

\- `chmod` - Makes the script executable.



\## How to Run



```bash

chmod +x directory\_report.sh

./directory\_report.sh <directory>

