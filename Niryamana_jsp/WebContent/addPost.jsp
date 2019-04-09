<%@ page language="java" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://www.gstatic.com/firebasejs/5.8.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.8.4/firebase-auth.js"></script>
	<script type="text/javascript" src="https://unpkg.com/vue"></script>
	<link rel="stylesheet" href="css/addPost.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

	<title>निर्यमणा: The Community</title>
</head>

<div id="main">
	<body>
		<header class="header">
			<img src="images/niryamana_logo.png">
		</header>

		<nav>
			<ul class="navbar">
				<i class="fas fa-user-circle fa-4x" style="float: left" @click="openNav()"></i>
				<a href="index.html"><li>Home</li></a>
				<a href="community.html"><li>The Community</li></a>
				<a href="about.html"><li>About</li></a>
				<a href="regLogin.html" style="float: right;" @click="signOut"><li>Logout</li></a>
			</ul>
		</nav>

		<aside>
			<div id="mySidenav" class="sidenav">
				<span class="closebtn" @click="closeNav()"><i class="far fa-window-close"></i></span>
				<a href="profile.html">Your Profile</a>
				<a href="helpReq.html">Help Requests</a>
				<a href="volunReq.html">Volunteering Requests</a>
				<a href="friends.html">Your Friends</a>
			</div>
		</aside>
		
		<form class="content" method="POST" action="">
			<div class="field">
				<label class="label">Title</label>
			
				<div class="control">
					<input class="input" type="text">
				</div>
			</div><br />
			
			<div class="field">
				<label class="label">Description</label>
			
				<div class="control">
					<textarea class="textarea"></textarea><br />
				</div>
			</div>
			
			<div id="map"></div>
			
			<button type="submit">Submit Post</button>
		</form>
				
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

<script type="text/javascript" src="js/addPost.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWcOJ18EEp5_6-OBvyWeetbh8oyEllEXY&callback=initMap"></script>
</html>