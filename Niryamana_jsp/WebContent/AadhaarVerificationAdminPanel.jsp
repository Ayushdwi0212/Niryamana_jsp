<%@ page language="java" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="https://unpkg.com/vue"></script>
	<link rel="stylesheet" href="css/community.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora|Neucha|M+PLUS+Rounded+1c">

	<title>निर्यमणा: Aadhaar Verification Panel</title>
</head>

<div id="content">
	<body>
		<table>
			<tr v-for="items in AadhaarDataArray">
				<form>
					<td>{{items.UID}}</td>
					<td><img src="{{items.AadhaarImage}}"></td>
					<td><img src="{{items.userImage}}"></td>
					<button type="submit" @click="">Verify</button>
				</form>
			</tr>
		</table>
	</body>
</div>

<script type="text/javascript" src="js/AadhaarVerificationAdminPanel.js"></script>
</html>