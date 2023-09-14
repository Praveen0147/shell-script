#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
   echo " Run with Sudo Access"
   exit 2
fi
yum install mysql -y
if [ $? -ne 0 ]
then
   echo " Installation is not succesful"
   exit 3
else 
   echo "Installation success"
 fi

 yum postfix mysql -y
if [ $? -ne 0 ]
then
   echo " Installation of postfix is not succesful"
   exit 3
else 
   echo "Installation of postfix success"
 fi
