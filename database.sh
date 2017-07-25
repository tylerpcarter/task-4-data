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
   mysql -u"$MYSQL" -p"$MYSQL" -e "CREATE TABLE $TABLE (ID VARCHAR(255), Date TIMESTAMP, HomeCapital VARCHAR(255), BAC_Limit VARCHAR(255), Fav_Superhero VARCHAR(255), First_VidGame NUMERIC(5,2), %GermElimByHandSanitizer VARCHAR(255)); ALTER TABLE $TABLE ADD PRIMARY KEY (ID);" $DATABASE
   
fi