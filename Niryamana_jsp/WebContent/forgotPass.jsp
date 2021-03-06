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
	<link rel="stylesheet" href="css/forgotPass.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<title>निर्यमणा: Forgot E-mail or Password?</title>
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

	<section class="columns" id="content">
		<div class="column content">
			<form @submit.prevent="sendPasswordResetEmail">
				<p>Please enter your e-mail if you've forgotten your password:</p>
				<input type="email" name="email" v-model="email"><br />
				<br />
				<button type="submit">Submit</button>
			</form>
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

<script type="text/javascript" src="js/forgotPass.js"></script>
</html>