<%@ page language="java" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="https://unpkg.com/vue"></script>
	<link rel="stylesheet" href="css/AadhaarVerification.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">
	<title>निर्यमणा: Upload your Aadhaar details for KYC</title>
</head>

<div id="main">
	<body>
		<header class="header">
			<img src="images/niryamana_logo.png">
		</header>

		<nav>
			<ul class="navbar">
				<a class="fas fa-user-circle" @click="openNav()"></a>
				<a href="index.jsp"><li>Home</li></a>
				<a href="community.jsp"><li>The Community</li></a>
				<a href="about.jsp"><li>About</li></a>
				<a href="regLogin.jsp" style="float: right;" @click="signOut()"><li>Logout</li></a>
			</ul>
		</nav>

		<aside>
			<div id="mySidenav" class="sidenav">
				<span class="closebtn" @click="closeNav()">
					<i class="far fa-window-close"></i>
				</span>
				<a href="profile.jsp">Your Profile</a>
				<a href="helpReq.jsp">Help Requests</a>
				<a href="volunReq.jsp">Volunteering Requests</a>
				<a href="friends.jsp">Your Friends</a>
				<a href="groups.jsp">Your Groups</a>
			</div>
		</aside>

		<form class="content" method="POST" action="userAadhaarEntry.jsp">
			<p>Please upload a clear picture of your Aadhaar card from your device:</p>
			<input type="file" name="AadhaarImage" id="AadhaarImage" accept="image/*"><br /><br />
			<input type="hidden" name="AadhaarImageURI" id="AadhaarImageURI"></input>

			<p>Upload a picture of yourself via your PC's webcam or your mobile phone's front camera (please allow the browser to access your device's camera for this to work):</p>
			<button type="button" @click="startVideoStream()"><i class="fas fa-video">Start camera</i></button><br />
			<video ref="video" autoplay></video><br />
			<button type="button" @click="takeSnapshot()"><i class="fas fa-camera">Take a picture</i></button><br />
			<canvas ref="canvas"></canvas><br />
			<input type="hidden" name="userPhoto" id="userPhoto">

			<button type="submit">Next</button>
		</form>

		<footer class="footer">
			<p>Niryamana is a non-profit initiative to connect people together in hopes of making 
			Indian communities better. To know more about our mission and lend your support, do 
			check out our About page and our social media pages. <br />
				© Niryamana 2019. All rights reserved.
			</p>
		</footer>
	</body>
</div>

<script type="text/javascript" src="js/AadhaarVerification.js"></script>
<script type="text/javascript" src="js/JPEGtoBase64.js"></script>
</html>
