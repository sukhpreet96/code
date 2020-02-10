<?php
        session_start();

        if(! isset($_SESSION['email']) ) {
		header("Location: s1.php");
		exit();
	}
       include_once 'config.php';

                $em1 = $_SESSION['email'];
                
        if(isset($_REQUEST['id'])) {
            if(is_numeric($_REQUEST['id'])){

     
                 
              
                $uid = $_REQUEST['id'];
                $sql = "SELECT * FROM new_user WHERE id='" . $uid . "' LIMIT 1";
                $res = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($res,MYSQLI_ASSOC);
                $id2 = $row['id'];
               $nm= $row['name'];   
               $c = $row['college'];
              $pic = $row['profile'];
                $cat = $row['category'];
               $sql2 = "select * from colleges where clg_id = '$c'";
               $res2 = mysqli_query($conn,$sql2);
               $row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC);
               $clg = $row2['college_name'];
               
                     
        } 
echo 'Welcome'." ". $nm;
echo '<br>';
echo 'your college is'." ".$clg;
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Tangerine|Montserrat|Dosis|Roboto">
<link rel="shortcut icon" type="image/x-icon" href="f.png.png" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<title>
<?php
echo ucwords($nm);
?>
</title>
<style>
h3,h2,h1,h4,h5,h6,p
{
font-family: 'Roboto',Serif;
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
.logo
{
background: transparent;
position: absolute;
left: 0%;
}
.stng
{
position: absolute;
right: 15%;
top: 14%;
}
.message
{
position: absolute;
right: 16%;
top: 14%
}
select
{

top: 30%;
left: 18%;
width: 170%;
height: 5%;
padding: 7px;
margin-top: 8px;
margin-bottom: 10px;
font-size: 15px;
font-family: 'Roboto',serif;
}
input[type="submit"]
{


width: 200%;
height: 100%;
background-color: #4CAF50;
border-color: #1B5E20;
margin-top: 10px;
color: white;
font-size: 14px;
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
right: 16%;
top: 14%
}
.globe
{
position: absolute;
top: 6%;
left: 20%;
}
.text2
{
position: absolute;
top: 0%;
left: 37%;
}

.home
{

position: absolute;
right: 20%;
top: 14%

}

.hmbox:hover,.notibox:hover,.cbox:hover,.sbox:hover
{
background-color: #536DFE;
}
.hmbox
{
position: absolute;
top: 10%;
left: 76.5%;
background-color: #3949AB;
height: 65%;
width: 4%;
}
.notibox
{
position: absolute;
top: 10%;
left: 81.5%;
background-color: #3949AB;
height: 65%;
width: 4%;
}
.cbox
{
position: absolute;
top: 10%;
left: 86.5%;
height: 65%;
width: 4%;
background-color: #3949AB;
}
.sbox
{
position: absolute;
top: 10%;
left: 91.5%;
background-color: #3949AB;
height: 65%;
width: 4%;
}
body
{

background-color: #dfe3ee;
}
.editbtn
{
position: absolute;
top: 5%;
left: 90%;
}
.editbtn2
{
position: absolute;
top: 83%;
left: 76%;
background-color: transparent;
height: 20%;
width: 15%;
}
.editbtn2:hover
{
background-color: #BDBDBD;
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
.txt1
{
width: 80%;
}
select
{
width: 160%;
}
.main_pic
{
position: absolute;
left: 0%;
top: 0%;
}
.main_name
{
position: absolute;
left: 33%;
top: 32%;
}
.box1
{
position: absolute;
top: 20%;
left: 15%;
height: 25%;
width: 15%;

}
.box2
{
position: absolute;
height: 7%;
width: 40%;
top: 50%;
left: 40%;
background-color: white;
border: 2px solid #E0E0E0;
}
.picupload
{
position: absolute;
top: 30%;
left: 20%;
}
.biodata
{
position: absolute;
top: 28%;
left: 5%;
}
.location
{
position: absolute;
top: 42%;
left: 5%;
}
.text1
{
position: absolute;
top: 25%;
left: 19%;
}
.biobox
{
position: absolute;
background-color: white;
height: 45%;
left: 15%;
top: 50%;
width: 23.5%;
border: 2px solid #E0E0E0;
}
.biobox:hover
{
background-color: #E0F7FA;
}
.hiddenbox
{
position: absolute;
top: 50%;
left: 40%;
height: 25%;
box-shadow: inset 0 0 5px #000000;
width: 25%;
background-color: #E8F5E9;

}
.hiddenbox1
{
position: absolute;
top: 50%;
left: 40%;
height: 60%;
box-shadow: inset 0 0 5px #000000;
width: 30%;
background-color: #E8F5E9;

}
.divider
{
    width:20px;
    height:auto;
    display:inline-block;
}
.sbmt1
{
position: absolute;
top: 50%;
left: 20%;
}
.hdntxt
{
position: absolute;
left: 20%;
}
.cross
{
position: absolute;
top: 1.7%;
right: 1.5%;
}
.forselect
{
position: absolute;
top: 10%;
left: 10%;
}
.fhead
{
position: absolute;
left: 10%;
}

.pic12
{
position: absolute;
border:8px solid white;

}
.b2t
{
position: absolute;
left: 10%;
top: 15%;
}
a
{
font-family: 'Roboto',serif;
text-decoration: none;
color: black;
font-size: 20px;
}
.sbtt1
{
width: 80%;


}

</style>

<script>

$(function(){
$('.hiddenbox').hide();
$('.hiddenbox1').hide();



    $("#picclick").click(function(){
        $('.box2').hide();
        return false;
         });

    $("#picclick").click(function(){
       $('.hiddenbox').show();
      return true;
      });
    
    $("#crossbtn").click(function(){
       $('.box2').show();
      return true;
      });

 $("#crossbtn").click(function(){
       $('.hiddenbox').hide();
      return false;
      });

   $("#bioedit").click(function(){
        $('.box2').hide();
        return false;
         });

  $("#bioedit").click(function(){
       $('.hiddenbox1').show();
      return true;
      });


});
</script>
</head>
<body>
<div class="header">
<div class="hmbox">
<div class="home">
<a href="home.php" id="click11"><img src="home.png" style="width:35px;height:33px;"></a>
</div>
</div>
<div class="notibox">
<div class="notification">
<a href="#" id="click11"><img src="notis2.png" style="width:35px;height:33px;"></a>
</div>
</div>
<div class="cbox">
<div class="message">
<a href="#" id="click11"><img src="msgs2.png" style="width:35px;height:33px;"></a>
</div>
</div>
<div class="sbox">
<div class="stng">
<a href="#" id="click11"><img src="stng.png" style="width:35px;height:33px;"></a>
</div>
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
<div class="box1">

<div class="main_pic">


<img class="pic12" src = "<?php echo $pic ?>" style="height:165px; width: 180px;">
</div>


<?php
if($em1 == $id2)
{
?>

<div class="editbtn2">
<a href="" id="picclick">
<img src = "edit.png" style="width:30px;height:30px;">
</a>
</div>
<?php
}
?>

</div>
<div class="main_name">
<h1><?php echo ucwords($nm); ?></h1>
</div>
<div class="biobox">
<div class="biodata">
<img src="work.png" style="width:40px;height:40px;">
</div>
<div class="location">
<img src="location.png" style="width:34px;height:33px;">
</div>
<div class="text1">
<p><?php echo ucwords($cat); echo " "; ?>at<?php echo" "; echo $clg; ?>
</div>
</p>
<div class="globe">
<img src="globe.png" style="width:40px;height:40px;">
</div>
<div class="text2">
<h2>Biodata</h2>
</div>
<div class="editbtn">
<?php
if($em1 == $id2)
{
?>
<a href="" id="bioedit">
<img src = "edit.png" style="width:30px;height:30px;">
</a>
<?php
}
?>
</div>

</div>
<div class="box2">
<div class="b2t">
<a href="#!">Posts</a>
<div class="divider"></div>
<a href="#!">Questions</a>
</div>
</div>
<div class="hiddenbox">
<div class="hdntxt">
<h4>Change your Profile Picture</h4>
</div>
<form id="uploadForm" action="profilepic.php" method="post" enctype="multipart/form-data">
<div class="picupload">
<input name="userfile" type="file" required>
</div>
<div class="sbmt1">
<input type="submit" value="Upload" name="submit">
</div>
</form>
<div class="cross">
<a id="#crossbtn" href="" >
<img src="cross1.png" style="width:15px; height:15px;">
</a>
</div>
</div>


<div class="hiddenbox1">
<form>
<div class="fhead">
<h3>Tell us about your place</h3>
</div>
<?php
$qrr = "select state from states order by state_id asc";
$rss = mysqli_query($conn,$qrr);
$option ='';
while($ro = mysqli_fetch_assoc($rss))
{
  $option .= '<option value = "'.$ro['state'].'">'.$ro['state'].'</option>';
}
?>
<div class="forselect">
 <select> 
<?php echo $option; ?>
</select>
<div class="txt1">
<input type="text" placeholder="Your City" name="city">
</div>
<div class="sbtt1">
<input type="submit" value="Submit" name="submit_add">
</div>
</div>
</form>
</div>



</body>
</html>

