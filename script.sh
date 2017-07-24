#!/bin/bash

#SQL credentials
SQL=root

#I modified this forloop from stack exchange to instead of echo out char by char, to concatenate each char into a string. After generating a 12 
#character random sequence, I echo the entire string.
#The % I added in because it will prevent and overflow and will keep the max # down,

chars=abcd1234ABCD
for i in {1..12} ; 
do
    randomString+=`echo -n ${chars:RANDOM%${#chars}:1}`
done
echo $randomString

#Ask survey questions and get answers for each
echo "What is the capital of USA?"
read capitalOfUSA

echo "What is the BAC (blood alcohol concentration) limit in all 50 states?"
read limitBAC

echo "Which superhero do you like more: Superman or Batman?"
read favSH

echo "What is the first video game you ever played?"
read vidGame

echo "What percentage of germs do hand sanitizers promise to eliminate?"
read handSan

#Writes data into temp.csv
echo "$capitalOfUSA,$limitBAC,$favSH,$vidGame,$handSan" >> ./temp.csv
#Read out data in CSV format
cat temp.csv

#Saves timestamp into variable and echos the current time.
dateStamp=`date --iso-8601=seconds`
echo "The date is "$dateStamp""

#Get into mysql
mysql -u $SQL --password="$SQL" && "show databases;"