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
if [ "$checkDB" == "$DATABASE"]; then
echo "Database exists, continuing without creating new database."

else
echo "Creating database named "$DATABASE""
mysql -u"$MYSQL" -p"$MYSQL" -e "CREATE DATABASE $DATABASE"

fi

#Check if table exists, if not, create table
checkTable=`mysql -u"$MYSQL" -p"$MYSQL" -e "show tables;" $DATABASE | grep -Fo $TABLE`

#Conditional statement to create table if it doesn't already exist
if [ "$DBCHECK" == "$MYTABLE" ]; then
   echo "Table exists"
   
else
   echo "Table does not exist. Creating table..."
   mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE TABLE $MYTABLE (ID VARCHAR(255), Date TIMESTAMP, capitalOfUSA VARCHAR(255), limitBAC VARCHAR(255), favSH VARCHAR(255), vidGame NUMERIC(5,2), handSan VARCHAR(255)); ALTER TABLE $MYTABLE ADD PRIMARY KEY (ID);" $MYDATABASE
   
fi