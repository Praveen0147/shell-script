#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
USERID=$(id -u)
VALIDATE ()
{
  if [ $? -ne 0 ]
  then 
     echo -e "$R $i Installation Failed"
  else 
     echo -e "$G $i Installation Success"  
  fi    
}
if [ $USERID -ne 0 ]
then 
   echo " Run with Sudo Access"
   exit 2
fi
for i in $@
do
    package_name=$i
    rpm -q "$package_name"  &>>$LOGFILE
    if [ $? -ne 0 ] 
    then  
        yum install $i -y &>>$LOGFILE
        VALIDATE $? $i
     else
       echo -e "$G $i installation already Installed"  
    fi  
done    