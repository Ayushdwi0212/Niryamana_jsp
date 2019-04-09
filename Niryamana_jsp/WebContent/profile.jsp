<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%
	




%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://www.gstatic.com/firebasejs/5.8.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.8.4/firebase-auth.js"></script>
	<script type="text/javascript" src="https://unpkg.com/vue@latest"></script>
	<script type="text/javascript" src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<link rel="stylesheet" href="css/profile.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

	<title>निर्यमणा: Your Profile</title>
</head>

<div id="main">
	<body>
		<header class="header">
			<img src="images/niryamana_logo.png">
		</header>

		<nav>
			<ul class="navbar">
				<i class="fas fa-user-circle fa-5x" style="float: left"></i>
				<a href="index.jsp"><li>Home</li></a>
				<a href="community.jsp"><li>The Community</li></a>
				<a href="about.jsp"><li>About</li></a>
			</ul>
		</nav>

		<div class="columns is-marginless">
			<aside class="column is-one-fifth is-paddingless">
				<div class="sidenav">
					<a href="profile.jsp">Your Profile</a>
					<a href="helpReq.jsp">Help Requests</a>
					<a href="volunReq.jsp">Volunteering Requests</a>
					<a href="friends.jsp">Your Friends</a>
					<a href="groups.jsp">Your Groups</a>
					<a href="regLogin.jsp" onclick="signOut()">Logout</a>
				</div>
			</aside>

			<div class="column has-text-centered-mobile" id="main">
				<main class="main">
					<a href="editProfile.jsp"><button class="editButton"><i class="fas fa-user-edit"></i>Edit Profile</button></a>

					<div class="media">
						<figure class="media-left">
							<p class="image is-96x96">
								<a href="updateProfilePic.jsp">
									<img class="is-rounded" :src="profilePic">
								</a>
							</p>
						</figure>

						<div class="media-content is-right">
							<div class="content">
								<p><strong>Name: <br /> <%out.println(session.getAttribute("name")); %></strong></p>						
							</div>
						</div>
					</div>
					
					<br />
					<br />
					
					<p>Date of Birth: <%out.println(session.getAttribute("dob")); %></p>
					<p>City: <%out.println(session.getAttribute("city")); %></p>
					<p>State: <%out.println(session.getAttribute("state")); %></p>
					<p>Volunteers requested: <%out.println(session.getAttribute("postcount")); %> times</p>
					<p>Volunteered:  <%out.println(session.getAttribute("reqcount")); %>times</p>
					<p>No. of Friends: </p>
					
					<a href="AadhaarVerification.jsp"><button class="editButton" style="float: none;">Complete your <br />KYC process</button></a>
				</main>
			</div>
		</div>

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

<script type="text/javascript" src="js/profile.js"></script>
</html>