#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    if [$1 -ne 0 ]
    then
        echo " $2.... failure"
        exit 1
    else
        echo  " $2 ...sucess"
    fi
}
USERID=$(id -u)
 
 if [$? -ne 0]
 then 
     echo "Error pless run as root user"
    exit 1
 fi
yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

yum install postfix -y &>>$LOGFILE
VALIDATE $? "Installing postfix"