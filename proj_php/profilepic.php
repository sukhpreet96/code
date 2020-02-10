<?php
session_start();
include_once 'config.php';
$new_id = $_SESSION['email'];
$q = "select * from new_user where id = '$new_id'";
$r = mysqli_query($conn,$q);
$row = mysqli_fetch_array($r,MYSQLI_ASSOC);
$id1 = $row['id'];
$uploadDir = 'profiles/';
if(isset($_POST['submit']))
{
	
	$fileName = $_FILES['userfile']['name'];
	$tmpName = $_FILES['userfile']['tmp_name'];
	$fileSize = $_FILES['userfile']['size'];
	$fileType = $_FILES['userfile']['type'];
	
	$filePath = $uploadDir . $fileName;
	$result = move_uploaded_file($tmpName, $filePath);
	if (!$result)
	{
	//echo "Error uploading file";
	$filePath="uploads/no_images.jpeg";
	}
		
	if(!get_magic_quotes_gpc())
	{
	$fileName = addslashes($fileName);
	$filePath = addslashes($filePath);
	} 
	$query = "update new_user set profile='$filePath' where id ='$id1'";
	
	$res=mysqli_query($conn,$query) ;
$query1 = "update status set profile='$filePath' where user_id ='$id1'";
	
	$res1=mysqli_query($conn,$query1) ;
	
  if( $res&& $res1)
{
$path=$filePath;
	header("Location: profile.php?id=$new_id");
}
else
{
echo 'error';
}
}
?>