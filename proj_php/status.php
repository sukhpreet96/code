<?php
session_start();
include_once 'config.php';
$new_id = $_SESSION['email'];
$q = "select * from new_user where id = '$new_id'";
$r = mysqli_query($conn,$q);
$row = mysqli_fetch_array($r,MYSQLI_ASSOC);
$id1 = $row['id'];
$stat = $_POST['status'];
$date = date('Y-m-d H:i:s');
$name = $row['name'];
$pro = $row['profile'];

$qry = "insert into status(user_id,status,time,name,profile) values('$id1','$stat','$date','$name','$pro')";
$res= mysqli_query($conn,$qry);
if($res)
{
$path=$filePath;
header("Location: home.php");
}

?>
