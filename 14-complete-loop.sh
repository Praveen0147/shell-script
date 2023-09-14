#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
for i in $@
do
    package_name=$i
    rpm -q "$package_name"
    if [ $? eq 0 ] then
      echo -e "$G $i already installed"
    else   
        yum install $i -y
        if [ $? -eq 0 ]
        echo -e "$G $i installation successful"
        else
        echo -e "$R $i installation fail"
        fi
    fi    
done    