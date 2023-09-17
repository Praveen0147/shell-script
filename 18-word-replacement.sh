#!/bin/bash
File1=$1
Replace_word=$2
sed -i "s/.*/$Replace_word/" "$File1"
echo "Content of $File1 Replaced, Please check"
