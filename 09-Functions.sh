#!/bin/bash
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
yum install mysql -y
VALIDATE $? "MYSQL INSTALLATION"
yum install postfix -y
VALIDATE $? "Postfix INSTALLATION"
