#!/bin/bash
VALIDATE(){
    if [$1 -ne 0 ]
    then
        echo " instalastion.... failure"
        exit 1
    else
        echo  " instalation ...sucess"
    fi
}
USERID=$(id -u)
 
 if [$? -ne 0]
 then 
     echo "Error pless run as root user"
    exit 1
 fi
yum install mysql -y
VALIDATE $? "Installing mysql"

yum install postfix -y
VALIDATE $? "Installing java"