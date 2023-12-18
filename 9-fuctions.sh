#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " $2....$R Failure $N"
        exit 1
    else
        echo -e  " $2 ...$G Sucess $N"
    fi
}
USERID=$(id -u)
 
 if [ $? -ne 0 ]
 then 
     echo "Error pless run as root user"
    exit 1
 fi
yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

yum install postfixl -y &>>$LOGFILE
VALIDATE $? "Installing postfix"