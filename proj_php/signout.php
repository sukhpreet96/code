<?php

	session_start();
	
	if (!isset($_SESSION['email'])) {
		header("Location: s1.php");
	} else if(isset($_SESSION['email'])!="") {
		header("Location: home.php");
	}
	
	if (isset($_GET['logout'])) {
		unset($_SESSION['email']);
		session_unset();
		session_destroy();
		header("Location: s1.php");
		exit;
	}
?>