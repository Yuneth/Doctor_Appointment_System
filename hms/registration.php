<?php
include_once('include/config.php');

	//Include required PHPMailer files
	require 'include/PHPMailer.php';
	require 'include/SMTP.php';
	require 'include/Exception.php';
	//Define name spaces
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\SMTP;
	use PHPMailer\PHPMailer\Exception;

if (isset($_POST['submit'])) {
	$fname = $_POST['full_name'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$gender = $_POST['gender'];
	$email = $_POST['email'];
	$password = md5($_POST['password']);

	// Insert user data into the database
	$query = mysqli_query($con, "insert into users(fullname,address,city,gender,email,password) values('$fname','$address','$city','$gender','$email','$password')");

	if ($query) {
	// Send a confirmation email to the user

	//Create instance of PHPMailer
	$mail = new PHPMailer();
	//Set mailer to use smtp
	$mail->isSMTP();
	//Define smtp host
	$mail->Host = "smtp.gmail.com";
	//Enable smtp authentication
	$mail->SMTPAuth = true;
	//Set smtp encryption type (ssl/tls)
	$mail->SMTPSecure = "tls";
	//Port to connect smtp
	$mail->Port = "587";
	//Set gmail username
	$mail->Username = "add your email";
	//Set gmail password
	$mail->Password = "add app id";
	//Email subject
	$mail->Subject = "You have successfully registered..!!";
	//Set sender email
	$mail->setFrom('add your email id');
	//Enable HTML
	$mail->isHTML(true);
	//Attachment
	// $mail->addAttachment('img/attachment.png');

	//Email body
	$mail->Body = "<h2>Account Registration is Successful !!</h2>
					</br><p> Dear $fname,</p> 
					</br><p>To confirm your email address and activate your account, please click on the following link: http://localhost/Doctor_Appointment_System/hms/user-login.php</P>
					</br><p>If you did not register with us, please ignore this email.</p></br></br> 
					</br><p>Best regards,</p>
					</br><p>Swabhasri Channelling Center Team</p>";
					
	//Add recipient
	$mail->addAddress($email);

	//Finally send email
	if ( $mail->send() ) {
		echo "Confirmation email sent successfully..!";
	}else{
		echo "Failed to send confirmation email..!";
	}
	//Closing smtp connection
	$mail->smtpClose();


		// Redirect the user to the login page
		echo "<script>alert('Successfully Registered. You can login now'); </script>";
		echo "<script>
	        setTimeout(function() {
	            window.location.href = 'user-login.php';
	        }, 2000); // Delay in milliseconds (2 seconds)
	    	</script>";
	}
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<title>User Registration</title>


	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
	<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
	<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
	<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="assets/css/styles.css">
	<link rel="stylesheet" href="assets/css/plugins.css">
	<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />


	<script type="text/javascript">
		function valid() {
			if (document.registration.password.value != document.registration.password_again.value) {
				alert("Password and Confirm Password Field do not match  !!");
				document.registration.password_again.focus();
				return false;
			}
			return true;
		}
	</script>


</head>

<body class="login">
	<!-- start: REGISTRATION -->
	<div class="row">
		<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="logo margin-top-30">
				<a href="../index.php">
					<h2> DCS | Patient Registration</h2>
				</a>
			</div>
			<!-- start: REGISTER BOX -->
			<div class="box-register">
				<form name="registration" id="registration" method="post" onSubmit="return valid();">
					<fieldset>
						<legend>
							Sign Up
						</legend>
						<p>
							Enter your personal details below:
						</p>
						<div class="form-group">
							<input type="text" class="form-control" name="full_name" placeholder="Full Name" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address" placeholder="Address" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="city" placeholder="City" required>
						</div>
						<div class="form-group">
							<label class="block">
								Gender
							</label>
							<div class="clip-radio radio-primary">
								<input type="radio" id="rg-female" name="gender" value="female">
								<label for="rg-female">
									Female
								</label>
								<input type="radio" id="rg-male" name="gender" value="male">
								<label for="rg-male">
									Male
								</label>
							</div>
						</div>
						<p>
							Enter your account details below:
						</p>
						<div class="form-group">
							<span class="input-icon">
								<input type="email" class="form-control" name="email" id="email" onBlur="userAvailability()" placeholder="Email" required>
								<i class="fa fa-envelope"></i> </span>
							<span id="user-availability-status1" style="font-size:12px;"></span>
						</div>
						<div class="form-group">
							<span class="input-icon">
								<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
								<i class="fa fa-lock"></i> </span>
						</div>
						<div class="form-group">
							<span class="input-icon">
								<input type="password" class="form-control" id="password_again" name="password_again" placeholder="Password Again" required>
								<i class="fa fa-lock"></i> </span>
						</div>
						<div class="form-group">
							<div class="checkbox clip-check check-primary">
								<input type="checkbox" id="agree" value="agree" checked="true" readonly=" true">
								<label for="agree">
									I agree
								</label>
							</div>
						</div>
						<div class="form-actions">
							<p>
								Already have an account?
								<a href="user-login.php">
									Log-in
								</a>
							</p>
							<button type="submit" class="btn btn-primary pull-right" id="submit" name="submit">
								Submit <i class="fa fa-arrow-circle-right"></i>
							</button>
						</div>
					</fieldset>
				</form>

				<div class="copyright">
					&copy; <span class="current-year"></span><span class="text-bold text-uppercase"> DCS</span>. <span>All rights reserved</span>
				</div>

			</div>

		</div>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/modernizr/modernizr.js"></script>
	<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="vendor/switchery/switchery.min.js"></script>
	<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/login.js"></script>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Login.init();
		});
	</script>

	<script>
		function userAvailability() {
			$("#loaderIcon").show();
			jQuery.ajax({
				url: "check_availability.php",
				data: 'email=' + $("#email").val(),
				type: "POST",
				success: function(data) {
					$("#user-availability-status1").html(data);
					$("#loaderIcon").hide();
				},
				error: function() {}
			});
		}
	</script>

</body>
<!-- end: BODY -->

</html>