const config = {
	apiKey: "AIzaSyAwj0S65tbfKXormqaslo-pooz1mDtFTvs",
	authDomain: "niryamana-ac2dc.firebaseapp.com",
	databaseURL: "https://niryamana-ac2dc.firebaseio.com",
	projectId: "niryamana-ac2dc",
	storageBucket: "niryamana-ac2dc.appspot.com",
	messagingSenderId: "449429620964"
};
firebase.initializeApp(config);

const storageService = firebase.storage();
const storageRef = storageService.ref();

new Vue({
	el: "#main",
	data: {
		userUID: '',
		profilePic: '',
		imageFile: '',
		imageName: '',
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
		},
	},
})

function readFile() {

	if (this.files && this.files[0]) {

		var FR= new FileReader();

		FR.addEventListener("load", function(fileUploaded) {
			document.getElementById("profileImage").src = fileUploaded.target.result;
			document.getElementById("profileImageURI").value = fileUploaded.target.result;
		}); 

		FR.readAsDataURL( this.files[0] );
	}
}

document.getElementById("profileImage").addEventListener("change", readFile);