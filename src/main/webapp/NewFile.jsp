<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select, textarea {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
<body>

	<h3>Send SMS Via Send.lk SMS Gateway</h3>
	<p>Besure to replace the Access Token in SendSMS.php file Line#5</p>
	<div>
		<form action="SmsServlet" method="POST">
			<label for="mobile">To Mobile Number</label> <input type="text"
				id="mobile" name="mobile" placeholder="07xxxxxxxx"> <label
				for="message">Subject</label>
			<textarea id="message" name="message" placeholder="Write something.."
				style="height: 100px"></textarea>
			<input type="submit" value="Send SMS">
		</form>
	</div>

</body>
</html>