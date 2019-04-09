const config = {
	apiKey: "AIzaSyAwj0S65tbfKXormqaslo-pooz1mDtFTvs",
	authDomain: "niryamana-ac2dc.firebaseapp.com",
	databaseURL: "https://niryamana-ac2dc.firebaseio.com",
	projectId: "niryamana-ac2dc",
	storageBucket: "niryamana-ac2dc.appspot.com",
	messagingSenderId: "449429620964"
};
firebase.initializeApp(config);

new Vue({
	el: '#main',
	data: {
		map: '',
		currentLocation: '',
		eventLocation: '',
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

function initMap() {
	var map = new google.maps.Map(document.getElementById('map'), {
		center: {lat: -34.397, lng: 150.644},
		zoom: 13
	});
    infoWindow = new google.maps.InfoWindow;
    var pos;
    if (navigator.geolocation) {
    	navigator.geolocation.getCurrentPosition(function(position) {
    		pos = {
    			lat: position.coords.latitude,
    			lng: position.coords.longitude
    		};

    		infoWindow.setPosition(pos);
    		infoWindow.open(map);
    		map.setCenter(pos);
    	}, function() {
    		handleLocationError(true, infoWindow, map.getCenter());
    	});
    }

    else {
    	// Browser doesn't support Geolocation
    	handleLocationError(false, infoWindow, map.getCenter());
    }
    
    var marker = new google.maps.Marker({
        position: pos,
        map: map,
        draggable:true,
        title:"Drag me!"
    });
}