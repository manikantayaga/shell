#!/bin/bash
VALIDATE(){
    if [$1 -ne 0 ]
    then
        echo "my -sql....failure"
        exit 1
    else
        echo  "my-sql ... sucess"
    fi
}
USERID=$(id -u)
 
 if [$? -ne 0]
 then 
     echo "Error pless run as root user"
    exit 1
 fi
VALIDATE $?
yum install mysql-y
VALIDATE $?
yum install java-y