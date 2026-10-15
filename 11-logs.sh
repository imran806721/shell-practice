#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="LOGS_DIR/$0.log"

#check root access or not

if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
fi
# echo "iam continiue"
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "Installing $1 is ...FAILED" | tee -a $LOGS_FILE
        exit1
    else
        echo "Installing $1 is ...SUCCESS" | tee -a $LOGS_FILE
    fi
}

    

echo "Installing mysql"
dnf list installed mysql  &>> LOGS_FILE

if [ $? -eq 0 ]; then
    echo "Installing mysql is ...SKIPPED"
else
    echo "Installing mysql"
    dnf install mysql -y  &>> LOGS_FILE
    VALIDATE mysql $?
fi

dnf list installed nginx  &>> LOGS_FILE

if [ $? -eq 0 ]; then
    echo "Installing nginx is ..SKIPPED"
    exit1
else
    echo "Installing nginx"
    dnf install nginx -y  &>> LOGS_FILE
    VALIDATE nginx $?
fi