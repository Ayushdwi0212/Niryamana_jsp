<%@ page language="java" contentType="text/html; charset=utf-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://www.gstatic.com/firebasejs/5.9.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.9.4/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.9.4/firebase-database.js"></script>
	<script type="text/javascript" src="https://unpkg.com/vue"></script>
	<link rel="stylesheet" href="css/regLogin.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	
	<title>निर्यमणा: Register or Login</title>
</head>

<body>
	<header class="header">
		<img src="images/niryamana_logo.png">
	</header>

	<nav>
		<ul class="navbar">
			<a href="index.jsp"><li>Home</li></a>
			<a href="about.jsp"><li>About</li></a>
			<a href="regLogin.jsp" style="float: right;"><li>Login/Register</li></a>
		</ul>
	</nav>

	<section>
		<div class="columns" id="logreg">

			<div class="column" style="margin-left: 2%">
				<form class="logreg" @submit.prevent="signIn">
					<h1> Already a member?<br />Please login from here:</h1>

					<p>E-mail Address:</p>
					<input type="text" name="userName" id="userName" v-model="userName" required><br />

					<p>Password:</p>
					<input type="password" name="loginPassword" id="loginPassword" v-model="loginPassword" required>
					<p style="font-size: 0.6em"><a href="forgotPass.html">Forgot your password?</a></p>

					<p v-if="errorMessageFlag">The email entered here is invalid. Please try again.</p>
					<p v-if="errorMessageFlag">The password you've entered is incorrect. Please try again.</p>
					<button type="submit">Login</button>
				</form>
			</div>

			<div class="column">
				<form class="logreg" @submit.prevent="register">
					<h1>Want to join the initiative? Please fill out these fields to get started:</h1>

					<p>Your e-mail address</p>
					<input type="email" name="email" id="email" v-model="email" required pattern="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">

					<p>Password (should be at least 8 letters long, with a capital letter, a small letter, a number, and a special symbol)</p>
					<input type="password" name="password" id="password" v-model="password" required pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$">

					<p>Please confirm the password you've written above</p>
					<input type="password" name="passwordConfirm" v-model="passwordConfirm" required pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"><br />

					<p v-if="password != passwordConfirm">The entered passwords do not match.</p>
					<p v-if="errorMessageFlag">This e-mail has already been used for registering an account. Please use a different e-mail address.</p>

					<button type="submit">Continue</button>
				</form>
				
				<form id="UIDFormLogin" action="test1.jsp">
					<input type="hidden" name="userUID" id="UIDLogin">
				</form>
			</div>
		</div>
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

<script type="text/javascript" src="js/regLogin.js"></script>
</html>
