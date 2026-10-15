#!/bin/bash

USERID=$(id -u)

#check root access or not

if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
fi
echo "iam continiue"
    

echo "Installing mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql is ...SKIPPED"
    exit1
else
    echo "Installing mysql is ...SUCCESS"
fi

echo "Install  ngnix"
dnf list installed nginx

if [ $? -ne 0 ]; then
    echo "Installing nginx is ..SKIPPED"
    exit1
else
    echo "Installing nginx"
    dnf install nginx -y
fi