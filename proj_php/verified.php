<?php
session_start();
include_once 'config.php';

$new_em = $_SESSION['email'];
if(isset($_POST['go']))
{
$c1 = $_POST['incode'];
$qry = "select * from new_user where id='$new_em'";
$res = mysqli_query($conn,$qry);
$row = mysqli_fetch_array($res,MYSQLI_ASSOC);
$i = $row['id'];
$nm1 = $row['name'];
$code = $row['verification_code'];
if($c1==$code)
{
$qry2 = "update new_user set verified=1 where id='$i'";
$res2 = mysqli_query($conn,$qry2);
echo 'You are now verified';
echo '<a href="signout.php?logout">Sign In</a>';
}
else
{
echo 'wrong code';
}
}
?> 