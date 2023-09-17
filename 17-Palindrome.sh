#!/bin/bash
echo " Enter a word"
echo " word entered is $1"
#word1=$(echo $1 | tr -d ' ' | tr 'A-Z' 'a-z')
Reverse=$(echo $1 |rev)
if ["$1" = "$Reverse" ]
then
  echo "$i is palindrome"
else
  echo  "$i is not palindrome"
fi  