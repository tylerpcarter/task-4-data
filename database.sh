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
if [ "$checkDB" == "$DATABASE" ]; then
echo "Database exists, continuing without creating new database."

else
echo "Creating database named "$DATABASE""
mysql -u"$MYSQL" -p"$MYSQL" -e "CREATE DATABASE $DATABASE"

fi

#Check if table exists, if not, create table
checkTable=`mysql -u"$MYSQL" -p"$MYSQL" -e "show tables;" $DATABASE | grep -Fo $TABLE`

#Conditional statement to create table if it doesn't already exist
if [ "$checkTable" == "$TABLE" ]; then
   echo "Table exists"
   
else
   echo "Table does not exist. Creating table..."
   mysql -u"$MYSQL" -p"$MYSQL" -e "CREATE TABLE $TABLE (ID VARCHAR(255), Date TIMESTAMP, HomeCapital VARCHAR(255), BAC_Limit VARCHAR(255), Fav_Superhero VARCHAR(255), First_VidGame NUMERIC(5,2), GermsElimByHandSanitizer VARCHAR(255)); ALTER TABLE $TABLE ADD PRIMARY KEY (ID);" $DATABASE
   
fi

#Write data from temp.csv into database table
echo "Writing data from temp.csv in "$TABLE" to "$DATABASE"."
mysql -u"$MYSQL" -p"$MYSQL" -e "LOAD DATA INFILE '/var/lib/mysql-files/temp.csv' INTO TABLE $TABLE FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';" $DATABASE
 
# Dump current version of database into export file
echo "Survey data dumped to file `date --iso-8601`-$DATABASE.sql"
mysqldump -u"$MYSQL" -p"$MYSQL" $DATABASE > `date --iso-8601`-$DATABASE.sql
# remove /var/lib/mysql-files/temp.csv
sudo rm /var/lib/mysql-files/temp.csv