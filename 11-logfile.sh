#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)
VALIDATE ()
{
  if [ $? -ne 0 ]
  then 
     echo "$2 .. Fail"
  else 
     echo "$2 ... Pass"  
  fi    
}
if [ $USERID -ne 0 ]
then 
   echo " Run with Sudo Access"
   exit 2
fi
yum install mysql -y &>>$LOGFILE
VALIDATE $? "MYSQL INSTALLATION"
yum install postfix -y &>>$LOGFILE
VALIDATE $? "Postfix INSTALLATION"
