#!/bin/bash

#I modified this forloop from stack exchange to instead of echo out char by char, to concatenate each char into a string. After generating a 12 
#character random sequence, I echo the entire string.
#The % I added in because it will prevent and overflow and will keep the max # down,
chars=abcd1234ABCD
for i in {1..12} ; 
do
    ID+=`echo -n ${chars:RANDOM%${#chars}:1}`
done
echo $ID

#Saves timestamp into variable and echos the current time.
TIMESTAMP=`date --iso-8601=seconds`
echo "The date is "$TIMESTAMP""

##############################################################################
#Ask survey questions and get answers for each
echo "What is the capital of your home country?"
read homeCapital

echo "What is the BAC (blood alcohol concentration) limit in all 50 states?"
read limitBAC

echo "Who is your favorite superhero?"
read favSH

echo "What is the first video game you ever played?"
read vidGame

echo "What percentage of germs do hand sanitizers promise to eliminate?"
read handSan
##############################################################################


#Writes data into temp.csv and then reads out data in CSV format
echo "$ID,$TIMESTAMP,$homeCapital,$limitBAC,$favSH,$vidGame,$handSan" > ./temp.csv
cat temp.csv

#Write new survey data to database
bash ./database.sh

#create the backup
cat ./temp.csv >> backup.csv

#Destroy Temp File
rm temp.csv
