#!/bin/bash
File1=$1
old_word=$2
new_word=$3
sed -i "s/.*/$old_word/$new_word/g" "$File1"
echo "Content of $File1 Replaced, Please check"
