<?php
	session_start();
if( isset($_SESSION['email'])!="" ){
		header("Location: home.php");
	}
	include_once 'config.php';




  

	

		
		$name = $_POST['name'];
		
		
		$email = $_POST['email'];
		
		$pass = $_POST['pwd'];
		
                $number = $_POST['num'];
		
                
                $univ = $_POST['univ'];
		
                $cat = $_POST['category'];
		
$code = mt_rand(1000, 9999);




   
                     $query="INSERT INTO new_user(name,email,password,contact,college,category,verification_code) VALUES('$name','$email','$pass','$number','$univ','$cat','$code')";
                     $res = mysqli_query($conn,$query);

                     if($res)


{ 

require "C:\wamp\PHPMailer\PHPMailerAutoload.php";

$mail = new PHPMailer(true);
if($mail)
{

    $mail->IsSMTP(); // telling the class to use SMTP
    $mail->SMTPAuth = true; // enable SMTP authentication
    $mail->SMTPSecure = "ssl"; // sets the prefix to the servier
    $mail->Host = "smtp.gmail.com"; // sets GMAIL as the SMTP server
    $mail->Port = 465; // set the SMTP port for the GMAIL server
    $mail->Username = "sukhpreetsinghsaini91@gmail.com"; // GMAIL username
    $mail->Password = "sukhpreet"; // GMAIL password
}
$email1= $email;
$name1= $name;
$email_from = "sukhpreetsinghsaini91@gmail.com";
$name_from= "Sukhpreet Singh";

//Typical mail data
$mail->AddAddress($email1, $name1);
$mail->SetFrom($email_from, $name_from);
$mail->Subject = "Verification code for myfaculty.com";
$mail->Body = "Welcome"." ".$name1." "."Your verification code is"." ".$code;

try{
    $mail->Send();
    echo "Success!";
} catch(Exception $e){
    //Something went bad
    echo "Fail - " . $mail->ErrorInfo;
}

$qq= "select * from new_user where email='$email'";
$rr= mysqli_query($conn,$qq);
$ro = mysqli_fetch_array($rr,MYSQLI_ASSOC);
$count1 = mysqli_num_rows($rr);
if( $count1 == 1 ) {
				$_SESSION['email'] = $ro['id'];
}


?>



<div class="ms">
<h1>Welcome <?php echo $name; ?>, a verification mail has been sent to your Email. </h1>
</div>
<div class="anchor_top">
<p>
<a href="s1.php">Click Here To login</a>
</p>
</div>
<div>
<form action= "verified.php" method="post">
<input type="number" maxlength="4" placeholder="Enter 4 digits verification code" name="incode" required>
<input type="submit" value="go" name="go">
</form>
</div>

<?php  }
	

                    
			
  ?>        
<html>
<head>
<link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Tangerine|Montserrat|Dosis|Roboto">
<style>
.d1
{
position: absolute;
top: 25%;
width: 70%;
background-color:
}

.anchor_top
{
position: absolute;
font-family: 'Roboto',serif;
top: 10%;
left: 30%;
z-index: 100;
}
.ms
{
position: absolute;
font-family: 'Roboto',serif;
top: 30%;
left: 30%;
}
a,a:hover
{
text-decoration: none;
color: blue;

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
<title>
Registered
</title>
</head>
<body>
</body>
</html>