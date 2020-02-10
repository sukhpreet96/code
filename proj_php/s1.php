<?php

	session_start();
	
	if (isset($_SESSION['email'])!="") {
	header("Location: home.php");
}
?>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Tangerine|Montserrat|Dosis|Roboto">
<link rel="shortcut icon" type="image/x-icon" href="f.png.png" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<title>My Faculty | Connecting Faculty and Students worldwide</title>
<style>
.header
{
	background-color: #3949AB;
	position:absolute;
	top: 0%;
	left:0%;
	width:100%;
	height:10%;
}
.cent_img
{
	background:url(bac1.jpg) no-repeat;
	position:absolute;
	top: 10%;
	width: 100%;
	height: 100%;
	left:0%;
}
.forform
{
position: absolute;
top: 10%;
left: 6%;
}
form
{

font-family: 'Roboto',serif;
}
input[type="text"]
{
width: 190%;

height: 5%;
padding: 10px;
margin-top: 8px;
margin-bottom: 10px;
font-family: 'Roboto',serif;
font-size: 15px;
}
	
input[type="password"]
{
width: 190%;

height: 5%;
padding: 10px;
margin-top: 8px;
margin-bottom: 10px;
font-family: 'Roboto',serif;
font-size: 15px;
}
.bott
{
position: fixed;
bottom: 0%;
left: 0%;
width:0%;
height: 10%;
background-color: #263238;
}
input[type="email"]
{
width: 190%;

height: 5%;
padding: 10px;
margin-top: 8px;
margin-bottom: 10px;
font-family: 'Roboto',serif;
font-size: 15px;
}
input[type="number"]
{
width: 190%;
height: 5%;
padding: 10px;
margin-top: 8px;
margin-bottom: 10px;
font-family: 'Roboto',serif;
font-size: 15px;
}
select
{
width: 192%;
height: 5%;
padding: 10px;
margin-top: 8px;
margin-bottom: 10px;
font-size: 15px;
font-family: 'Roboto',serif;
}

input[type="submit"]
{

position: absolute;
width: 70%;
height: 12%;
background-color: #4CAF50;
border-color: #1B5E20;
margin-top: 10px;
color: white;
font-size: 14px;
}
.div1
{
background-color: white;
position: absolute;
width: 38%;
height: 80%;
top: 16%;
left: 34%;
}
.div2
{
background-color: white;
position: absolute;
width: 38%;
height: 60%;
top: 16%;
left: 34%;
}
a,a:visited
{
text-decoration: none;
color:  blue;
}
.tc
{
position: absolute;
left: 40%;
top: 69%;
font-family: 'Roboto',serif;
}
.ar
{
position: absolute;
left: 10%;
top: 90%;
font-family: 'Roboto',serif;
}
.sgnup
{
position: absolute;
left: 10%;
top: 45%;
font-family: 'Roboto',serif;
z-index: 100;
}
.join
{
position: absolute;

font-family: 'Roboto',serif;
left: 6%;
}
.login
{
position: absolute;

font-family: 'Roboto',serif;
left: 10%;
}
.main_title
{
position: absolute;
top: 10%;
color: white;
left: 36%;
font-family: 'Roboto',serif;
font-size: 25px;
}	
img
{
background-color: transparent;
height: 50%;
width: 50%;

}
.logo
{
background: transparent;
position: absolute;
left: 0%;

}
.hhh
{
position: absolute;
font-family: 'Dosis', serif;
font-size: 50px;
color: white;
top: -59%;
left: 10%;
}
input:required:valid {
    background-image: url(tick.png);
    background-position: right center;
    background-repeat: no-repeat;
  }
input:required:invalid:focus {
    background-image: url(cross.png);
    background-position: right center;
    background-repeat: no-repeat;
  }
.frm2
{
position: absolute;
top: 10%;
left: 10%;
}
.btn2
{
position: absolute;
width: 100%;
height: 250%;
}


</style>
<script>

$(function(){
$('.frm2').hide();
$('.login').hide();
$('.sgnup').hide();

    $("#click").click(function(){
        $('.forform').hide();
       $(this).hide();
       $('.tc').hide();
       $('.ar').hide();
       $('.join').hide();
       
        return false;
    });
$("#click").click(function(){
        $('.frm2').show();
        $('.login').show();
       $('.sgnup').show();
       return true;
     
    });
$("#click2").click(function(){
$('.frm2').hide();
$(this).hide();
$('.sgnup').hide();
$('.login').hide();
});
$("#click2").click(function(){
 $('.forform').show();
       $(this).show();
       $('.tc').show();
       $('.ar').show();
       $('.abc').show();
       $('.join').show();
       
        return true;
});

});
</script>
</head>

<body>




<div class="header">
<h2 class="hhh">myfaculty.com</h2>
<div class="logo">
<img src="mainlogo1.png" style="width:115px;height:74px;">
</div>
</div>
<div class="cent_img">
</div>



<div class="div1">
<div class="sgnup">
 <p><a href="#" id="click2"> Sign Up </a> Here</p> 
</div>
<div class="join">
<h2>Join Us</h2>
</div>
<div class="tc">
<h5>By Clicking create account you agree to our <a href="tc.html">Terms and Conditions.</a></h5>
</div>
<div class="ar">
<p>Already Registered?                   <a href="#" id="click" class="abc">Login Here</a></p>
</div>

<div class="forform">
<form class="rform" method="post" action="signup.php">
<input type="text" required name="name" placeholder="Enter your name" pattern=".{3,}" autocomplete=off>
<br>
<input type="email" required name="email" placeholder="Enter your Email" autocomplete=off>
<br>

<input type="password" placeholder="Enter password" name="pwd" title="Please enter a valid password" pattern="^.*(?=.{6,})(?=.*[a-z])(?=.*[A-Z]).*$" required>
<br>
<input type="number" placeholder="Your Contact Number" name="num" >
<br>
<select name="univ">
<option value="101">Chandigarh University</option>
<option value="102">Thapar University</option>
<option value="103">Chitkara University</option>
<option value="104">Guru Nanak Dev University</option>
<option value="105">DAV University</option>
</select>
<br>
<input type="radio" name="category" value="faculty"checked>Faculty
<input type="radio" name="category" value="student">Student<br>
<input type="submit" value="Create Account" value="save">

</form >
</div>

<div class="login">
<h2>Login</h2>
</div>

<div class="frm2">
<form name="loginform" method="post" action="login.php">
<input type="email" required name="email1" placeholder="Username" autocomplete=off>
<br>
<input type="password" required name="password1" placeholder="Password" autocomplete=off>
<br>
<div class="btn2">
<input type="submit" value="Login" >
</div>
</form>
</div>

</body>
</html>

<?php

if( isset($_SESSION['email'])){
		header("Location: home.php");
          exit;
	}
include_once 'config.php';
?>