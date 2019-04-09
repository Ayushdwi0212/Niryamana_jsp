new Vue({
	el: '#main',

	data: {
		constraints: {
			audio: false,
			video: true,
		},
		source: '',
		snapshot: '',
		test: '',
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
		
		readFile() {
			if (this.files && this.files[0]) {
				var FR= new FileReader();
				
				FR.addEventListener("load", function(e) {
					document.getElementById("AadhaarImage").src = e.target.result;
				}); 
			
				FR.readAsDataURL( this.files[0] );
			}
		},

		startVideoStream() {
			source = this.$refs.video;
			navigator.mediaDevices.getUserMedia(this.constraints).then((stream) => {source.srcObject = stream});
		},

		takeSnapshot() {
			snapshot = this.$refs.canvas;
			snapshot.getContext('2d').drawImage(source, 0, 0, 160, 160);
			document.getElementById('userPhoto').value = snapshot.toDataURL("image/jpeg");
		},
	},
})