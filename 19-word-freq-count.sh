#!/bin/bash
file_name=$1
cat "$file_name" | tr -s ' ' '\n' | sort | uniq -c | sort -nr
