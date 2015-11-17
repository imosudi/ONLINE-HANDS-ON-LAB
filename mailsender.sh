#!/bin/bash

 echo "

"

 echo " You are required to run the following linux command after login
 providing relevant options and operands " >>EMAIL_CONTENT.txt

# shuf -n 5 linux_commands.txt >>EMAIL_CONTENT.txt
 shuf -n 5 linux_commands.txt | tee teachermail.txt >>EMAIL_CONTENT.txt
./databaseinsert.sh
 echo " 

"
  echo "Please login using Putty software utility. Available for download at: http://www.putty.org/ 
 Goodluck " >> EMAIL_CONTENT.txt

sed "s/%40/@/g" <mail.txt >newmail.txt
 
value=`cat newmail.txt`
echo "$value"

mail -s "WELCOME TO ONLINE HANDS-ON LAB." $value  < EMAIL_CONTENT.txt

echo "<h1>Mosudi $value Isiaka $newemail </h1> "
#touch /home/mosud/testcgi/$USERNAME.txt
