#!/bin/bash

USERID=$(id -u)

#check root access or not

if [ $USERID -NE 0 ]; then
     echo "please run this script with root access"
fi
    