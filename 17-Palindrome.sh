#!/bin/bash
echo " Enter a word"
read -s WORD
echo " word entered is $WORD"
#word1=$(echo $1 | tr -d ' ' | tr 'A-Z' 'a-z')
Reverse=$(echo "$WORD" |rev)
if ["$WORD" = "$Reverse" ]
then
  echo "$WORD is palindrome"
else
  echo  "$WORD is not palindrome"
fi  