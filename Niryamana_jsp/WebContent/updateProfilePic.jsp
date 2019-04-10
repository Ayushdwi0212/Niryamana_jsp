<%@ page language="java" contentType="text/html; charset=utf-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://www.gstatic.com/firebasejs/5.9.2/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.9.2/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.9.2/firebase-storage.js"></script>
	<script type="text/javascript" src="https://unpkg.com/vue"></script>
	<link rel="stylesheet" href="css/updateProfilePic.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

	<title>निर्यमणा: Upload a profile picture</title>
</head>

<div id="main">
	<body>
		<header class="header">
			<img src="images/niryamana_logo.png">
		</header>

		<nav>
			<ul class="navbar">
				<i class="fas fa-user-circle fa-4x" style="float: left" @click="openNav()"></i>
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
				<a href="helpReq.jsp">Help	Requests</a>
				<a href="volunReq.jsp">Volunteering Requests</a>
				<a href="friends.jsp">Your Friends</a>
				<a href="groups.jsp">Your Groups</a>
			</div>
		</aside>

		<content class="content text-is-centered">
			<form method="POST" action="test1">
				<p>Please choose a picture from your device:</p>
				<input type="file" name="profileImage" id="profileImage" accept="image/*"><br />

				<input type="submit">
			</form>
		</content>

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

<script type="text/javascript" src="js/updateProfilePic.js"></script>
</html>
