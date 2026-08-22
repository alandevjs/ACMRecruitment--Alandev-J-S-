#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

echo "Directory Report" > report.txt
echo "================" >> report.txt

total_files=$(find "$DIR" -type f | wc -l)
echo "Total number of files: $total_files" >> report.txt

executable_files=$(find "$DIR" -type f -executable | wc -l)
echo "Total number of executable files: $executable_files" >> report.txt

largest_file=$(find "$DIR" -type f -printf '%s %p\n' | sort -n | tail -1 | cut -d' ' -f2-)

if [ -n "$largest_file" ]; then
    echo "Largest file: $largest_file" >> report.txt
else
    echo "Largest file: None" >> report.txt
fi

recent_file=$(find "$DIR" -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)

if [ -n "$recent_file" ]; then
    echo "Most recently modified file: $recent_file" >> report.txt
else
    echo "Most recently modified file: None" >> report.txt
fi

hidden_files=$(find "$DIR" -type f -name '.*' | wc -l)
echo "Number of hidden files: $hidden_files" >> report.txt