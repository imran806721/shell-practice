#!/bin/bash

USERID=$(id -u)

#check root access or not

if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
fi
# echo "iam continiue"
VALIDATE(){
    if [ $2 -ne o ]; then
        echo "Installing $1 is ...FAILED"
        exit1
    else
        echo "Installing $! is ...SUCCESS"
}

    

echo "Installing mysql"
dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "Installing mysql is ...SKIPPED"
else
    echo "Installing mysql"
    dnf install mysql -y
    VALIDATE mysql $?
fi

dnf list installed nginx

if [ $? -eq 0 ]; then
    echo "Installing nginx is ..SKIPPED"
    exit1
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE nginx $?
fi