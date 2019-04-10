function readFile() {

	if (this.files && this.files[0]) {

		var FR= new FileReader();

		FR.addEventListener("load", function(fileUploaded) {
			document.getElementById("AadhaarImage").src = fileUploaded.target.result;
			document.getElementById("AadhaarImageURI").value = fileUploaded.target.result;
		}); 

		FR.readAsDataURL( this.files[0] );
	}
}

document.getElementById("AadhaarImage").addEventListener("change", readFile);