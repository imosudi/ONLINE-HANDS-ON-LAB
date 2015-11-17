#!/bin/bash
echo "Content-type: text/html"
echo ""
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
echo " 
<h3 class='section-heading'> The Student Online Hands-on Enrollment</h3>

           <div class='col-md-10 col-md-offset-1'>"

echo " <form action='process.sh' method='get' class='form-horizontal'> "

echo "<div class='row'>

<div class='form-group'> "
echo "<label class='col-lg-3 control-label'> Lastname:*</label>"
echo " <div class='col-md-6'><input type='text' class=' form-control' name='lastname' required></div></div> "

echo "<div class='form-group'> "
echo "<label class='col-lg-3 control-label'>Firstname:*</label>"
echo " <div class='col-md-6'><input type='text' class=' form-control' name='firstname' required></div></div> "

echo "<div class='form-group'> "
echo "<label class='col-lg-3 control-label'>Othername:</label>"
echo " <div class='col-md-6'><input type='text' class=' form-control' name='othername' othername></div></div> "

echo "<div class='form-group'> "
echo "<label class='col-lg-3 control-label'>Email:*</label>"
echo " <div class='col-md-6'><input type='email' class=' form-control' name='email' required></div></div> "


echo "<!--div class='form-group'> "
echo "<label class='col-lg-3 control-label'>Enter a username:</label>"
echo " <div class='col-md-6'><input type='text' class=' form-control' name='username'></div></div--> "


echo "<!--div class='form-group'> "
echo "<label class='col-lg-3 control-label'>Enter a password:</label>"
echo " <div class='col-md-6'><input type='password' class='form-control' name='pass' ></div></div-->"

echo " <div class='col-md-offset-3 col-md-3'><button type='reset' class='btn btn-danger btn-lg'>Cancel</button></div>"

echo "<input type='submit' name='subbtn' class='btn btn-primary btn-lg' value='Submit'> "
echo "</div>"
echo " <form>"

echo "</div>"
echo "</body></html>"
