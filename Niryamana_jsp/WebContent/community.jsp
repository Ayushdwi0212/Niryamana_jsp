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
	<link rel="stylesheet" href="css/community.css">
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
			</div>
		</aside>

		<a href="addPost.jsp" style="float: right;">Add a new post</a><br />

		<div class="columns content is-marginless">

			<cards></cards>

			<cards></cards>
			<!-- <section class="column has-text-centered">
				<div class="card">
					<header class="card-header">
						<p class="card-header-title">Sephiroth</p>
						
						<div class="dropdown is-active">
							<div class="dropdown-trigger">
								<a href="#" class="card-header-icon" @click="isVisible = !isVisible"><span class="icon"><i class="fas fa-angle-down"></i></span></a>
							</div>

							<div class="dropdown-menu" role="menu" v-if="isVisible">
								<a href="responseCounter" class="dropdown-item">
									Volunteer for this event
								</a>

								<a href="#" class="dropdown-item">
									Chat with the event creator
								</a>
							</div>
						</div>
					</header>

					<p class="card-content">
						Estuans Interius<br />
						Ira vehemti<br />
						Estuans Interius<br />
						Ira vehemti<br />
					</p>
				</div>
			</section> -->

			<!-- <section class="column has-text-centered">
				<div class="card">
					<header class="card-header">
						<p class="card-header-title">Sephiroth</p>
						
						<div class="dropdown is-active">
							<div class="dropdown-trigger">
								<a href="#" class="card-header-icon" @click="isVisible = !isVisible"><span class="icon"><i class="fas fa-angle-down"></i></span></a>
							</div>

							<div class="dropdown-menu" role="menu" v-if="isVisible">
								<a href="responseCounter" class="dropdown-item">
									Volunteer for this event
								</a>

								<a href="#" class="dropdown-item">
									Chat with the event creator
								</a>
							</div>
						</div>
					</header>

					<p class="card-content">
						Sors immanis<br />
						Et inanis<br />
						Estuans interius<br />
						Ira vehemti<br />
					</p>
				</div>
			</section> -->
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

<script type="text/javascript" src="js/community.js"></script>
</html>