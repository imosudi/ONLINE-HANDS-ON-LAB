#!/bin/bash
echo "Content-type: text/html"
echo ""
#USERNAME=`echo "$QUERY_STRING" | sed -n 's/^.*username=\([^&]*\).*$/\1/p' | sed "s/+/ /g"`
lastname=`echo "$QUERY_STRING" | sed -n 's/^.*lastname=\([^&]*\).*$/\1/p' | sed "s/+/ /g"`
firstname=`echo "$QUERY_STRING" | sed -n 's/^.*firstname=\([^&]*\).*$/\1/p' | sed "s/+/ /g"` 
#password=$(perl -e 'print crypt($ARGV[0], "pass")' $pass)
email=`echo "$QUERY_STRING" | sed -n 's/^.*email=\([^&]*\).*$/\1/p' | sed "s/+/ /g"`



echo "<html><head><title>Mosudi Isiaka| The Student Online Hands-on Enrollment"
echo "</title>

<!-- Latest compiled and minified CSS -->  
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' integrity='sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==' crossorigin='anonymous'>

<!-- Optional theme -->  
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css' integrity='sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX' crossorigin='anonymous'>

<!-- Latest compiled and minified JavaScript -->  
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js' integrity='sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==' crossorigin='anonymous'></script>
 <!--link href='css/bootstrap.min.css' rel='stylesheet'-->
<!-- Custom Fonts -->
    <link href='font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<script src='//code.jquery.com/jquery-1.11.3.min.js'></script>
<script src='//code.jquery.com/jquery-migrate-1.2.1.min.js'></script>


</head><body>"
echo " <div class='container'>  "
#echo password=$(makepasswd)
password=$(makepasswd)
USERNAME=$firstname$lastname
echo "Your Username: $USERNAME"
echo "<br>"
echo "Your Password: $password"
echo "<br>"
echo "$email"
#egrep "^$USERNAME" /etc/passwd >/dev/null

#if [ $? -eq 0 ]; then
#       echo "$USERNAME exists!"
#       exit 1
#else 
#        sudo useradd -m -p  $USERNAME $password
#        echo "$USERNAME -m -p $password"  | xargs sudo useradd
#       [ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"


echo "$USERNAME -m -p $password"  | xargs sudo useradd
echo "<h2>$lastname $firstname</h2> "
echo " $USERNAME  $firstname "


#./databaseinsert.sh 
echo "ONLINE HANDS-ON INVITE.

Dear $firstname,

Bellow is your login credential
Login host : mosudi.mioemi.com" > EMAIL_CONTENT.txt
echo "Username: $USERNAME" >> EMAIL_CONTENT.txt
#password=$(makepasswd)
#echo -e "$password\n $pasword" | (passwd --stdin $USERNAME)
#echo -e "$mosudi\n $mosudi" | (passwd --stdin $USERNAME)
echo $USERNAME:$password | /usr/sbin/chpasswd
echo "Password: $password" >> EMAIL_CONTENT.txt

echo " <!--form action='mailsender.sh' method='get' class='form-horizontal'> "

echo " <input type='hidden' class=' form-control' name='lastname'  value='$lastname'> "
echo " <input type='hidden' class=' form-control' name='firstname' value='$firstname'> "
echo " <input type='hidden' class=' form-control' name='email'     value='$email'> "
echo " <input type='hidden' class=' form-control' name='username'  value='$USERNAME'> "
echo " <input type='hidden' class=' form-control' name='pass'      value='$password'>"
echo " <input type='submit' name='subbtn' class='btn btn-primary btn-lg' value='Next'> "
echo " <form-->"

echo $USERNAME > username.txt
echo $hostname > hostname.txt
echo $lastname > lastname.txt
echo $firstname >firstname.txt

echo $email > mail.txt
./mailsender.sh 
#shuf -n 5 linux_commands.txt >$USERNAME_SAMPLE_COMMANDS.txt
#echo "Hi $firstname $lastname, This is your Online Hands-on lab 
#     login credentials. Login: Userame: $username , Passord: $password
#     Please login using putty ad run the following 
#    linux commands: " | mail -s "Online Hands-on Invite" $email
#/root/user.sh
#egrep "^$USERNAME" /etc/passwd >/dev/null
#if [ $? -eq 0 ]; then
#	echo "$USERNAME exists!"
#	exit 1
#else 
	#sudo useradd -m -p  $USERNAME $password
	#echo "$USERNAME -m -p $password"  | xargs sudo useradd
#	[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
#touch /tmp/$USERNAME.txt
echo "<h1>$lastname $firstname</h1> "
#touch /home/mosud/testcgi/$USERNAME.txt
echo "</div>"
echo "</body></html>"
