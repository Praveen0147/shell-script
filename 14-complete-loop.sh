#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE ()
{
  if [ $? -ne 0 ]
  then 
     echo "$2 .. Fail"
  else 
     echo "$2 ... Pass"  
  fi    
}
for i in $@
do
    package_name=$i
    rpm -q "$package_name"  
    if [ $? -ne 0 ] 
    then  
        yum install "$i INSTALLATION"
     else
       echo -e "$G $i installation already happened"   
    fi  
done    