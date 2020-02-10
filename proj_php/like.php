<?php
session_start();
include 'config.php';
$new_em = $_SESSION['email'];
if (isset($_POST['liked']))
{
$postid = $_POST['pid'];
$qry1 = "select * from status where st_id = '$postid' ";
$res1= mysqli_query($conn,$qry1);
$row1 = mysqli_fetch_array($res1,MYSQLI_ASSOC);
$id = $row1['user_id'];
$statid = $row1['st_id'];
$qry2 = "insert into likes(status_id,user_id) values('$statid','$new_em')";
$res2= mysqli_query($conn,$qry2);
}

?>
