<?php
session_start();
require_once 'config.php';
$em = $_POST['email1'];
$pw = $_POST['password1'];
 $qry="select * from new_user where email = '$em' and password = '$pw'";
$res= mysqli_query($conn,$qry);
$row = mysqli_fetch_array($res,MYSQLI_ASSOC);
$count = mysqli_num_rows($res);
if( $count == 1 ) {
				$_SESSION['email'] = $row['id'];
				header("Location: home.php");
			} else
                        {
				echo "Incorrect Credentials, Try again...";
			}
?>
				