#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31 m"
G="\e[32 m"
N="\e[0 m"
USERID=$(id -u)
VALIDATE ()
{
  if [ $? -ne 0 ]
  then 
     echo -e "$2 .. $R Fail $N"
  else 
     echo -e "$2 ...$G Success $N"  
  fi    
}
if [ $USERID -ne 0 ]
then 
   echo " Run with Sudo Access"
   exit 2
fi
yum install mysql -y &>>$LOGFILE
VALIDATE $? "MYSQL INSTALLATION"
yum install postttfix -y &>>$LOGFILE
VALIDATE $? "Postfix INSTALLATION"
