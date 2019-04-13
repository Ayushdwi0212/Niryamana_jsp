const config = {
	apiKey: "AIzaSyAwj0S65tbfKXormqaslo-pooz1mDtFTvs",
	authDomain: "niryamana-ac2dc.firebaseapp.com",
	databaseURL: "https://niryamana-ac2dc.firebaseio.com",
	projectId: "niryamana-ac2dc",
	storageBucket: "niryamana-ac2dc.appspot.com",
	messagingSenderId: "449429620964"
};
firebase.initializeApp(config);

Vue.component("cards", {
	template: `<section class="column has-text-centered">
				<div class="card">
					<header class="card-header">
						<p class="card-header-title"></p>
						
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
					</p>
				</div>
			</section>`,

			data() {
				return {isVisible: false}
			}
})

new Vue({
	el: '#main',
	data: {
		isVisible: false,
	},

	methods: {
		openNav() {
			document.getElementById("mySidenav").style.width = "13.5em";
			document.getElementById("main").style.marginLeft = "13.5em";
			document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
		},

		closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
			document.body.style.backgroundColor = "white";
		},

		signOut() {
			firebase.auth().signOut();
		}
	},
})