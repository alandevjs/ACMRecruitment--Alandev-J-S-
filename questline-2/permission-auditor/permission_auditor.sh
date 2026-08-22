#!/bin/bash

# Check whether a directory argument was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

TARGET="$1"

# Check whether the argument is a directory
if [ ! -d "$TARGET" ]; then
    echo "Error: '$TARGET' is not a directory."
    exit 1
fi

declare -A suspicious

echo "=== Files with 777 permissions ==="
while IFS= read -r -d '' file; do
    echo "$file"
    suspicious["$file"]=1
done < <(find "$TARGET" -type f -perm 0777 -print0)

echo
echo "=== Files owned by root ==="
while IFS= read -r -d '' file; do
    echo "$file"
    suspicious["$file"]=1
done < <(find "$TARGET" -type f -user root -print0)

echo
echo "=== Files with SUID bit set ==="
while IFS= read -r -d '' file; do
    echo "$file"
    suspicious["$file"]=1
done < <(find "$TARGET" -type f -perm -4000 -print0)

echo
echo "Total suspicious files found: ${#suspicious[@]}"