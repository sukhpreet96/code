<?php
session_start();
if(! isset($_SESSION['email']) ) {
		header("Location: s1.php");
		exit();
	}
else
{

include 'config.php';
$new_em = $_SESSION['email'];
$qry1 = " select * from new_user where id = '$new_em'";
$res= mysqli_query($conn,$qry1);
$row = mysqli_fetch_array($res,MYSQLI_ASSOC);
$nm1 = $row['name'];
$uni = $row['college'];
$pp = $row['profile'];
$qry2 = " select name from new_user where college='$uni' and name <> '$nm1' limit 3";
$res1= mysqli_query($conn,$qry2);

while ($row1 = mysqli_fetch_row($res1))
{
  $arr[]= $row1;
}


$qryy = " select id from new_user where college='$uni' and name <> '$nm1' limit 3";
$ress= mysqli_query($conn,$qryy);

while ($roww = mysqli_fetch_row($ress))
{
  $arrr[]= $roww;
}

if(isset($_POST['liked']))
{
$postid = $_POST['pid'];
$qry1 = "select * from status where st_id = '$postid' ";
$res1= mysqli_query($conn,$qry1);
$row1 = mysqli_fetch_array($res1,MYSQLI_ASSOC);
$i = $row1['likes'];
$qry2 = "update status set likes = $i+1 where st_id = '$postid'";
$res2= mysqli_query($conn,$qry2);
$qry3 = "insert into likes(status_id,user_id) values('$postid','$new_em')";
$res3 = mysqli_query($conn,$qry3);

}

if(isset($_POST['unliked']))
{
$postid = $_POST['pid'];
$qry1 = "select * from status where st_id = '$postid' ";
$res1= mysqli_query($conn,$qry1);
$row1 = mysqli_fetch_array($res1,MYSQLI_ASSOC);
$i = $row1['likes'];
$qry2 = "update status set likes = $i-1 where st_id = '$postid'";
$res2= mysqli_query($conn,$qry2);
$qry3 = "delete from likes where user_id='$new_em' and status_id='$postid'";
$res3 = mysqli_query($conn,$qry3);
}



if(isset($_POST['requested']))
{
$postid1 = $_POST['pid1'];
$qry = "insert into requests(user1,user2) values('$new_em','$postid1')";
$res = mysqli_query($conn,$qry);

}

if(isset($_POST['cancel']))
{
$postid1 = $_POST['pid1'];
$qry = "delete from requests where user1='$new_em' and user2='$postid1'";
$res = mysqli_query($conn,$qry);

}




$qry3 = "select status from status order by st_id desc";
$res3= mysqli_query($conn,$qry3);
while ($row3 = mysqli_fetch_row($res3))
{
  $arr1[]= $row3;
}



$qry4 = "select name from status order by st_id desc";
$res4= mysqli_query($conn,$qry4);
while ($row4 = mysqli_fetch_row($res4))
{
  $arr2[]= $row4;
}

$qry6 = "select profile from status order by st_id desc";
$res6= mysqli_query($conn,$qry6);
while ($row6 = mysqli_fetch_row($res6))
{
  $arr4[]= $row6;
}







}
?>
<html>
<head>
<style>
.btn
{
position: absolute;
}
.hh1,h4,h3,h5,a
{
font-family: 'Roboto',serif;
}
.header
{      z-index: 1;
	background-color: #3949AB;
	position:fixed;
	top: 0%;
	left:0%;
	width:100%;
	height:10%;
}

body
{

background-color: #dfe3ee;
}
.status-color
{
position: absolute; 
background-color: white;
left: -10%;
width: 100%;



}

.box-centerside  
{
      position: absolute;
      top: 60%;
    left: 20%;
  width: 40%;


    }
.logo
{
background: transparent;
position: absolute;
left: 0%;
}
.stng
{
position: absolute;
right: 5%;
top: 14%;
}
.message
{
position: absolute;
right: 10%;
top: 14%
}

.search
{
position: absolute;
right: 47.30%;
top: 25%

}
.notification
{

position: absolute;
right: 15%;
top: 14%
}

.home
{

position: absolute;
right: 20%;
top: 14%

}
.forheading
{
position: fixed;
top: 15%;
left: 6%;

}
.searchbox
{
position: absolute;
top: 25%;
left: 20%;
}
input[type="text"]
{
width: 200%;
height: 70%;
font-family: 'Roboto',serif;
padding: 8px;
font-size: 16px;
}
.divforimage1
{
position:absolute;
background-color: white;
width: 10%;
height: 5%;
top:23%;
left: 4%;
}
.know_ppl
{
position: absolute;
left: 20%;
}

.left
{
position: absolute;
left: 6%;
top:15%;
}
.quiz_div
{
position: fixed;
top: 20%;
background-color: white;
left: 60%;
height: 70%;
width: 25%;

}
.txtfld[type="text"]
{

width: 60%;
}
select
{padding: 8px;
margin-top: 10px;
}

.vertical_line{
position: fixed;
left: 15%;
top: 10%;
height:650px; width:1px;background:#9E9E9E;}
.btn1
{
background-image: url("faculty.png");

}
a
{
text-decoration: none;
color: #616161;
}
div.myButton input {
position: absolute;
top: 40%;
    background:url("faculty.png") no-repeat;
    cursor:pointer;
    width: 200px;
    height: 100px;
    border: none;
}
.pic1
{
position: fixed;
top: 23%;


}
textarea
{
width:100%;
  resize:none;
  overflow:hidden;
  font-size:18px;
  height:100%;
  padding:2px;
  font-family: "Roboto",serif;
}
.recco
{
position: absolute;
left: 20%;
top: 15%;
}

.status_div
{
background-color: white;
position: absolute;
width: 35%;
height: 20%;
top: 20%;
left:17%;

}
.allstatus
{
font-family: 'Roboto',serif;
font-size: 15px;
font-weight: normal;
position: relative;
left: 10%;
top: 23%;
width: 70%;
}
.status_div1
{
background-color: white;
background-repeat: repeat-y;
position: absolute;
width: 35%;
height: 18%;
top: 50%;
left:17%;
display: inline-block;

}



.b
{
position: absolute;
background-color: #43A047;
top-margin: 10px;
width: 20%;
height: 20%;
top: 20%;

}
.divider{
    width:20px;
    height:auto;
    display:inline-block;
}

.bb
{
background-color: #9E9E9E;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius:6px;
    color: #fff;
    font-family: 'Roboto',serif;
    font-size: 15px;
    text-decoration: none;
    cursor: pointer;
    border:none;
      width: 100%;
left: 150%;


position: absolute;
}


.b1
{
position: absolute;
top: 42%;
left:20%;
}
.b2
{
position: absolute;
top: 43%;
left:25%;
}
.b3
{
position: absolute;
top: 42%;
left:43%;
}

h4
{
font-size: 20px;
}
.s1
{
position: absolute;
left: 10%;
}
.s2
{
position: absolute;
left: 10%;
}

.abc
{
position: absolute;
left: 92%;

}
.bar
{
position: absolute;
background-color: #dfe3ee;
height: 0.3%;
left: 0%;
width: 100%;
border-top: 1px solid #B0BEC5;
border-bottom: 1px solid #B0BEC5;

}
.bar1
{
position: absolute;
background-color: #dfe3ee;
height: 1%;
left: -65%;
width: 325%;

}

.ul1
{
position: absolute;
background-color: white;
box-shadow: inset 0 0 5px #000000;
right: 2%;
top: 10%;
width: 9%;
left: 90%;
height: 20%;

}
.smlimg1
{

position: absolute;
height: 1.25%;
width: 10%;
left: 8.6%;
background-color: white;
box-shadow: inset 0 0 2px #000000;

}
.c1
{
position: absolute;
overflow: hidden;
width: 100%;
height: 100%;
left: 10%;
border:1px solid #9E9E9E;
}

ul
{text-align: center;
}


li
{
list-style: none;
padding: 3px;
font-family: 'Roboto',serif;
}
li:hover
{
background-color: #9E9E9E;
}

.btnfollow
{
background-color: green;
font-size: 12px;

}


.mn
{
position: absolute;
height: 100%;
width: 100%;

padding-top: 3%;
}

button
{
background-color: #dfe3ee;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius:6px;
    color: #fff;
    font-family: 'Roboto',serif;
    font-size: 18px;
    text-decoration: none;
    cursor: pointer;
    border:none;
      width: 100%;
}
.button: hover
{
color: #81C784;
}
label
{
font-family: 'Roboto',serif;
}

.box
{
position: absolute;
left: 33%;
top: 10%;
background-color: #69F0AE;
height: 30%;
width: 30%;
}
.status-name
{
position: absolute;
left: 20%;

}

.suggestion
{
position: absolute;
left: 33%;
top: 10%;
background-color: #69F0AE;
height: 30%;
width: 30%;

}
.vline
{
position: absolute;
background-color: #9E9E9E;
width: 79%;
left: 6%;
height: 1px;
}
button: onclick
{
border:none;
}

.bn1,.bn2,.bn3
{
font-size: 15px;
}

.list_content
{
position: absolute;
left: 0%;

width: 100%;
}
.cmnt1
{
border-radius: 10px;
width: 250%;
font-size: 15px;
}
.frm3
{
position: absolute;
left: 10%;
}

.s11
{
position: absolute;
left: 29%;
top: 55%;
}
.s12
{
position: absolute;
top: 210%;
left: 40%;
}
.profile-pic
{
position: absolute;
left: -68%;
top: 10%;
}
input[type='file'] {
  color: transparent;
direction: center;
}
.sidepic
{
position: fixed;
left: 3%;
top: 20%;
border:1px solid #9E9E9E;
}
.sidename
{
position: fixed;
left: 8%;
top: 18%;
font-size: 20px;
}
.anchor1
{
color: black;
}
.knowname
{
position: absolute;
left: 150%;
}
.test
{
position: absolute;
top: 30%;
left: 20%;
}
.lc
{
position: absolute;
left: 10%;
}
.lc1
{
color: #00E676;
}
.dwn
{
position: absolute;
left: 90%;
}
.ul1
{
display: none;
}
</style>



<link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Tangerine|Montserrat|Dosis|Roboto">
<link rel="shortcut icon" type="image/x-icon" href="f.png.png" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<title>
Welcome
</title>
<script>
$(function(){
$('.ul1').hide();
//$('.cancel-list').hide();



 $("#click11").click(function(){
        $('.ul1').show();
          return true;
});

$(document).mouseup(function(e) {
var closediv = $(".ul1");
if (closediv.has(e.target).length == 0) {
closediv.hide();
}
});



 



$('.lclass').click(function(){
var pid = $(this).attr('id');

$.ajax({

url: 'home.php',
type: 'post',
//async: false,
data: {
 liked: 1,
 pid:pid
},
success:function(data){
$("body").html(data);
}


});

 

});

$('.lclass1').click(function(){
var pid = $(this).attr('id');

$.ajax({

url: 'home.php',
type: 'post',
//async: false,
data: {
 unliked: 1,
 pid:pid
},
success:function(data){
$("body").html(data);
}
});
 
});



$('.add').click(function(){
var pid1 = $(this).attr('id');
$.ajax({

url: 'home.php',
type: 'post',
//async: false,
data: {
 requested: 1,
 pid1:pid1
},
success:function(data){
$("body").html(data);
}
});
 
});


$('.add1').click(function(){
var pid1 = $(this).attr('id');
$.ajax({

url: 'home.php',
type: 'post',
//async: false,
data: {
 cancel: 1,
 pid1:pid1
},
success:function(data){
$("body").html(data);
}
});
 
});



});

</script>

</head>
<body>







<div id="mydiv">
<div class="ul1">
<div class="mn">
<ul>
<div class="list_content">

<div class="oc1"><a href="#!" ><li>Settings</li></a></div>
<div class="oc2"><a href="signout.php?logout" ><li>Sign Out</li></a></div>
</div>
</div>
</ul>
</div>
</div>




<div class="vertical_line">
</div>

<div id="targetLayer">
</div>
<div class="header">
<div class="stng">
<a href="#" id="click11"><img src="stng.png" style="width:40px;height:40px;"></a>
</div>
<div class="message">
<a href="#" id="click11"><img src="msgs2.png" style="width:40px;height:40px;"></a>
</div>
<div class="notification">
<a href="#" id="click11"><img src="notis2.png" style="width:40px;height:40px;"></a>
</div>
<div class="home">
<a href="home.php" id="click11"><img src="home.png" style="width:40px;height:40px;"></a>
</div>
<div class="search">
<a href="#" id="click11"><img src="search1.png" style="width:40px;height:40px;"></a>
</div>
<div class="logo">
<img src="mainlogo1.png" style="width:115px;height:66px;">
</div>
<form>
<div class="searchbox">
<input class="n1" type="text" name="search" placeholder="Search here">
</div>
</form>
</div>
<div class="cont">
<div class="status_div">
<form id="formstatus" action="status.php" method="post" onkeypress="return event.keyCode != 13;">
<textarea placeholder="Whats in your mind for today?" required rows="4" name="status" ></textarea>
</form>
</div>
<div class="b1">
<button type="submit" form="formstatus" class="bt"><img src="post.png" style="width:40px; height: 40px;"></button>
</div>
<div class="b2">
<form id="uploadForm" action="pic1.php" method="post" enctype="multipart/form-data">
<div class="s11">
<input name="userfile"   type="file" class="inputFile" required >
</div>
<div class="s12">
<input type="image" name="submit1" src="pic.png" style="width:40px; height: 40px;" border="0" alt="Submit" />
</div>
</form>

</div>
<div class="b3">
<button><img src="ques.png" style="width:40px; height: 40px;"></button>
</div>
<?php 
$length1 = count($arr1);
?>

<div class="box-centerside">
<div class="status-color">
<?php 
for($i=0;$i<$length1;$i++)
{ 

echo '<h4>';
include_once 'config.php';
 $sql = "select user_id from status order by st_id desc";
$r1 = mysqli_query($conn,$sql);
  while ($row11 = mysqli_fetch_assoc($r1))
{

     $lnk[] = $row11;
}
 echo "<a  href='profile.php?id=" . implode( $lnk[$i]). "'>"


?>



<div class="smlimg">

<img class="c1" src=  "<?php echo implode($arr4[$i]) ?>" style="height:45px; width: 45px;">

</div>
<?php
echo '<div class="divider"> </div>';
echo '<div class="status-name">';
echo  implode($arr2[$i]);
echo '</div>';
echo '</a>';
echo '</h4>';
echo '<div class="dwn"><a href="#!"><img class="icon icons8-Add-to-Favorites" width="40" height="40" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACy0lEQVRoQ+2YO3bTQBSG/1uYQ4d3EKeSyriIXJKsAFbAYwWIhhanpUGsIAkrgBVgSiuFXcpVlB04HQeKyxk9wJIlzVx5xjk+J2p1pfm/+8+98yAc+EMHrh+PAA/toFMH+MY/U4B0msxcgboFiP0fGUCQnB8cQJZ9RgYAwrkrF5w5wHn2sykEYObKBScAleyXc8eRC24AqtkvEZy4YB2gMfsOXbAP0Jx9Zy5YBejMviMX7AJ0Z9+JC9YAjLJfIgxwTOMktbG42QOI/SsArw1FXVOQvDGM7QyzAsALf4Q/uBUJsuSCGKAQewTCGZiHAJ2AMQJhJAJgpCCkAC9BtAZjhgHupFOrEeCfSPAJiIZgtSUoxIpU9g3mJUBrEGZgXgO0bIOrAPCNF4Lpc99hN7979eFZ5TdfP93b+C1A/J5OV9H/rlz7LcuKsVWUI4Ct4m+eQhYgHAA0dq7WIt7VCcsArW23swvtAmERoHPN0LZRE4i6WNNqNShs7YKnBVBidBCOALTi89Oq4dMF4QDASLwIoMsJywDG4sUAGYThYteziN9SkKhNofFjPIU2/8ixFwH0rmsUOQB/oWAVGisvAvsBzL1vIHphFYD5O01WL/cDEHuLbBfa8fRwYEnBarwnAJ91A8kBsitI8YwQfyA6Ouoo6+97XH7JAWJfHQUvpdoM4913IZ77UxA+GgqShTEuaJJMJR/1cUDd9T+XDCKI/UlBUl4IG30mB5j7t0bnX8YdCHk2Gcq1I60iRkqT5FgbtxEgB4g1HagQXl9RWdWOAYi0E4kAujsQ34Mp0s3hvIY4BKh6aC6zKuxEQoCmQ38uHE9+RTRO1yb282I0xO+nYQuIqBPJACp7ILnwOlwziGxPJATwyw50jQGm0kuoNneKeyhV8OpqUtSJhABehAFFtoRvO6KuKDmU7EpFACbze98xjwD7zvj2/u+hFew4/l/x0VNA6q3cjQAAAABJRU5ErkJggg=="></a></div>';
echo '<br>';
echo '<br>';
echo '<p class="allstatus">';
$imgexts = array("gif","jpeg","jpg","png","tiff","tif");
$url = implode($arr1[$i]);
$urlext = pathinfo($url, PATHINFO_EXTENSION);
if(in_array($urlext,$imgexts))
{
?>

<img  src="<?php  echo implode($arr1[$i])  ?>" style="width:430px;height: 400px;">

<?php
}
else
{
echo implode($arr1[$i]);
}
echo '</p>';
?>
<br>
<div class="frm3">
<form id="formcomment" action="cmnt.php" method="post" onkeypress="return event.keyCode != 13;">
<textarea class="cmnt1" placeholder="Write a comment" rows="1" name="comment"></textarea>
</form>
</div>
<?php
?>
<br>
<br>
<br>
<div class="lc">
<p style="font-family: 'Roboto',serif; color: #00E676;">
<a href="#!" class="lc1">
<?php

$qr = "select likes from status order by st_id desc";
$re= mysqli_query($conn,$qr);
 while ($ro = mysqli_fetch_assoc($re))
{

     $ln[] = $ro;
}
$s = implode($ln[$i]);
echo $s+"  "." "."likes";
?>
</a>
</p>
</div>
<div class="vline">
</div>

<br>
<br>
<div class="s1">
<?php
$sql111 = "select st_id from status order by st_id desc";
$r111 = mysqli_query($conn,$sql111);
  while ($row111 = mysqli_fetch_assoc($r111))
{

     $lnk111[] = $row111;
}

$a1 = implode($lnk111[$i]);
$q1 = "select * from likes where user_id = '$new_em' and status_id ='$a1'";
$r1 = mysqli_query($conn,$q1);

if(mysqli_num_rows($r1)==1)
{
?>
<a  href="#!" class="lclass1" id= "<?php echo $a1 ?>" >
<img  class="t1" src="like3.png" style="width: 50px; height: 45px;">
</a>
<?php
}
else
{
?>
<a  href="#!" class="lclass" id= "<?php echo $a1 ?>" >

<img  class="t1" src="like4.png" style="width: 50px; height: 45px;">
</a>
<?php
}
?>





<div class="divider" ></div>

<a href="" class="bn2"><img src="comment.png" style="width: 40px; height: 40px;"></a>
<div class="divider"></div>
<a href="" class="bn3"><img src="share.png" style="width: 40px; height: 33px;"></a>
</div>
<br>
<?php
 echo '<br>';
echo '<br>';
echo '<div class="bar">';
echo '</div>';
echo '<br>';

} 
?>









</div>
</div>



<?php
echo '<h4>';
include_once 'config.php';

 echo "<a  href='profile.php?id=" . $new_em. "'>"
?>




<div class="sidepic">
<img  src="<?php  echo $pp  ?>" style="width:50px;height: 50px;">
</div>
<div class="sidename">
<p > <?php echo ucwords($row['name']); ?></p>
</div>
</a>



<div class="quiz_div">


<?php 
$length = count($arr);
?>
<div class="know_ppl">
<h3 >People you may know</h3>
</div>
<div class="recco">
 <?php 
for($i=0;$i<$length;$i++)
{ 

echo '<h4>';
echo '<div class="bar1">';
echo '</div>';
echo '<br>';
echo '<div class="divider"></div>';
$a = implode( $arrr[$i]);
$q1 = "select * from requests where user1='$new_em' and user2= '$a'";
$r1 = mysqli_query($conn,$q1);





echo "<a  href='profile.php?id=" . implode( $arrr[$i]). "'>";
echo  implode($arr[$i])
?>
</a>
<div class="divider" > </div>
<?php
if(mysqli_num_rows($r1)==1)
{
?>

<a href="#!">
<div class="add1" id = "<?php echo implode( $arrr[$i]) ?>" >
<br>
<button class="btnfollow">Follow Request Sent</button>
</a>
</div>
<?php
}
else
{
?>
<a href="#!">
<div class="add" id = "<?php echo implode( $arrr[$i]) ?>" >
<img src="follow.png" style="width:50px;height:50px;">
</a>
</div>
<?php
}


?>
<?php
echo '</h4>';
} 
?>
</div>
</div>
</div>
</div>

</body>
</html>