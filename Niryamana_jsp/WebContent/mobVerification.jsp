<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://www.gstatic.com/firebasejs/5.8.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.8.4/firebase-auth.js"></script>
	<script type="text/javascript" src="https://unpkg.com/vue"></script>
	<link rel="stylesheet" href="css/mobVerification.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

	<title>निर्यमणा: A Home for Volunteers from your community</title>
</head>

<div id="main">
	<body>
		<header class="header">
			<img src="images/niryamana_logo.png">
		</header>

		<nav>
			<ul class="navbar">
				<a class="fas fa-user-circle" style="float: left" @click="openNav()"></a>
				<a href="index.jsp"><li>Home</li></a>
				<a href="community.jsp"><li>The Community</li></a>
				<a href="about.jsp"><li>About</li></a>
				<a href="regLogin.jsp" style="float: right;" @click="signOut"><li>Logout</li></a>
			</ul>
		</nav>

		<aside>
			<div id="mySidenav" class="sidenav">
				<span class="closebtn" @click="closeNav()"><i class="far fa-window-close"></i></span>
				<a href="profile.jsp">Your Profile</a>
				<a href="helpReq.jsp">Help Requests</a>
				<a href="volunReq.jsp">Volunteering Requests</a>
				<a href="friends.jsp">Your Friends</a>
				<a href="groups.jsp">Your Groups</a>
			</div>
		</aside>

		<section class="columns content is-centered is-marginless">
			<form class="column is-narrow has-text-centered">
				<p>Please enter your mobile number:</p>
				<input class="input" type="text" name="mobNumber" v-model="mobNumber" required><br />
				<button type="button" @click="sendOTP">Send OTP</button>
				<div id="recaptchaVerifierDIV"></div>

				<p>Please enter the 6-digit code sent to your mobile number:</p>
				<input class="input" type="text" name="OTP"  v-model="OTP" required><br />

				<button type="submit" @click="verifyOTP">Submit OTP</button>
			</form>
		</section>

		<footer class="footer">
			<p>
				Niryamana is a non-profit initiative to connect people together in
				hopes of making Indian communities better. To know more about our
				mission and lend your support, do check out our About page and our
				social media pages. <br /> © Niryamana 2019. All rights reserved.
			</p>
		</footer>
	</body>
</div>

<script type="text/javascript" src="js/mobVerification.js"></script>
</html>
