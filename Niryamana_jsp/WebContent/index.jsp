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
	<link rel="stylesheet" href="css/home.css">
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
			<ul class="navbar" v-if="userLoginStatus">
				<i class="fas fa-user-circle fa-4x" style="float: left" @click="openNav()"></i>
				<a href="index.jsp"><li>Home</li></a>
				<a href="community.jsp"><li>The Community</li></a>
				<a href="about.jsp"><li>About</li></a>
				<a href="regLogin.jsp" style="float: right;" @click="signOut"><li>Logout</li></a>
			</ul>

			<ul class="navbar" v-if="!userLoginStatus">
				<a href="index.jsp"><li>Home</li></a>
				<a href="about.jsp"><li>About</li></a>
				<a href="regLogin.jsp" style="float: right;"><li>Login/Register</li></a>
			</ul>
		</nav>

		<aside>
			<div id="mySidenav" class="sidenav">
				<span class="closebtn" @click="closeNav()"><i class="far fa-window-close"></i></span>
				<a href="B_test.jsp">Your Profile</a>
				<a href="helpReq.jsp">Help	Requests</a>
				<a href="volunReq.jsp">Volunteering Requests</a>
				<a href="friends.jsp">Your Friends</a>
				<a href="groups.jsp">Your Groups</a>
			</div>
		</aside>

		<section>
			<article class="content">
				<p class="has-text-centered">
					<em>"God, grant me the serenity to accept the things I cannot
						change, courage to change the things I can, and wisdom to know the
						difference."</em>
				</p>

				<div class="columns">
					<div class="column" style="margin-top: 3%">
						<img src="images/footprint.jpg"
							alt="Image of a man helping a woman to climb up a rock.">
					</div>
				</div>

				<div class="columns">
					<div class="column" style="margin-top: 5%">
						<img src="images/gtho_logo.jpg"
							alt="Image with the text 'Giving to help others'.">
					</div>

					<div class="column">
						<p>This prayer carries the hope of the people to create a
							difference, both in their personal lives, and in the lives of
							others. Courage is the first step to make a difference, and those
							who dare take that first step are the most courageous.</p>

						<p>
							In the name of these courageous people, we present <em>Niryamana</em>.
						</p>
					</div>
				</div>

				<div class="columns">
					<div class="column">
						<p>
							<em>Niryamana</em> is an initiative to promote the idea of
							volunteerism as it originally was. We intend to bring together
							people who believe in championing the change they want to see in
							their society. We provide a platform to the people, so that they
							can come together and voluntarily work for the betterment of the
							place they live in.
						</p>

						<p>
							Interested? Please <a href="regLogin.jsp">click here</a> to get
							started.
						</p>
					</div>

					<div class="column" style="margin: 3%">
						<img src="images/hands_together.jpg"
							alt="9 pairs of hands of different ages and ethinicities together in a circle at a single point.">
					</div>
				</div>
			</article>
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

<script type="text/javascript" src="js/home.js"></script>
</html>
