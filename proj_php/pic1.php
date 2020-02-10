<?php
session_start();
include_once 'config.php';
$new_id = $_SESSION['email'];
$q = "select * from new_user where id = '$new_id'";
$r = mysqli_query($conn,$q);
$row = mysqli_fetch_array($r,MYSQLI_ASSOC);
$id1 = $row['id'];
$date = date('Y-m-d H:i:s');
$name = $row['name'];
$pro = $row['profile'];
$uploadDir = 'images/';


	
	 $fileName = $_FILES['userfile']['name'];
	$tmpName = $_FILES['userfile']['tmp_name'];
	$fileSize = $_FILES['userfile']['size'];
	$fileType = $_FILES['userfile']['type'];
	
	$filePath = $uploadDir . $fileName;
	$result = move_uploaded_file($tmpName, $filePath);
	if (!$result)
	{
	echo "Error uploading file";
	$filePath="uploads/no_images.jpeg";
     
	}
		
	if(!get_magic_quotes_gpc())
	{
	$fileName = addslashes($fileName);
	$filePath = addslashes($filePath);
       
	}
     
       
        $query1 = "insert into status (user_id, status,time,name,profile) values ('$id1','$filePath','$date','$name','$pro')";
        $res1= mysqli_query($conn,$query1);
	
  if ($res1)
{

	header("Location: home.php");
}

?>