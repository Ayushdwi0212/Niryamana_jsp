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
	<link rel="stylesheet" href="css/helpreq.css">
	<link rel="stylesheet" href="css/common-elements.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

	<title>निर्यमणा: Your Requests</title>
</head>

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
				<a href="regLogin.jsp"	onclick="signOut()">Logout</a>
			</div>
		</aside>

		<section class="column has-text-centered-mobile">
			<div class="card">
				<header class="card-header">
					<p class="card-header-title">Sephiroth</p>
					<a href="#" class="card-header-icon"> <span class="icon"><i	class="fas fa-angle-down"></i></span></a>
				</header>

				<p class="card-content">
					Estuans Interius<br />
					Ira vehemti<br />
					Estuans Interius<br />
					Ira vehemti<br />
				</p>
			</div>

			<div class="card">
				<header class="card-header">
					<p class="card-header-title">Sephiroth</p>
					<a href="#" class="card-header-icon"> <span class="icon"><i	class="fas fa-angle-down"></i></span></a>
				</header>

				<p class="card-content">
					Sors immanis<br />
					Et inanis<br />
					Estuans interius<br />
					Ira vehemti<br />
				</p>
			</div>
		</section>

		<section class="column has-text-centered-mobile">
			<div class="card">
				<header class="card-header">
					<p class="card-header-title">Sephiroth</p>
					<a href="#" class="card-header-icon"> <span class="icon"><i class="fas fa-angle-down"></i></span></a>
				</header>

				<p class="card-content">
					Veni, Veni, Venias<br />
					Ne Me Mori facias<br />
					Veni, Veni,	Venias<br />
					Ne Me Mori facias<br />
				</p>
			</div>
		</section>

		<section class="column has-text-centered-mobile">
			<div class="card">
				<header class="card-header">
					<p class="card-header-title">Sephiroth</p>
					<a href="#" class="card-header-icon"> <span class="icon"><i class="fas fa-angle-down"></i></span></a>
				</header>

				<p class="card-content">
					Veni, Veni, Venias, Gloriosa<br />
					Ne Me Mori facias, Generosa<br />
					Veni, Veni, Venias, Gloriosa<br />
					Ne Me Mori facias, Generosa<br />
				</p>
			</div>
		</section>
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

<script src="js/helpreq.js"></script>
</html>