#!/bin/bash

MYSQL=root

#Database Name
DATABASE=survey

#Table Name
TABLE=tableSurveyQuestions

#Place survey data into MySQL directory
sudo cp ./temp.csv /var/lib/mysql-files/

#Check if database exists, if not, create database
checkDB=`mysql -u"$MYSQL" -p"$MYSQL" -e "show databases;" | grep -Fo $DATABASE`

#Conditional Statement to Create Database if it doesn't already exist
if 
