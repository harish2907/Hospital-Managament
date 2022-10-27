<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/util.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<style>
#menu {
	border: 10px solid #000;
	background-color: #181818;
	font-family: Helvetica, sans-serif;
	font-size: 13px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

#menu ul li  form {
	display: inline;
}

#menu ul li {
	list-style-type: none;
	display: inline;
	margin-left: 30px;
}

#menu ul  li a:link {
	color: #FFF;
	text-decoration: none;
	text-transform: uppercase;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
	padding-right: 10px;
}

#menu ul li a:visited {
	color: #FFF;
	text-decoration: none;
	text-transform: uppercase;
}

#menu ul li a:hover {
	color: #FFF;
	background-color: #81B101;
}

</style>
</head>
<body>
	<div id="menu">
		<ul>
			<li><a href="Welcome.jsp">Home</a></li>
			<li><a href="AboutUs.jsp">About Us</a></li>
			<li><a href="FindDoctor.jsp">Find a Doctor</a></li>
			<li><a href="MyReport.jsp">My Report</a></li>
			<li><a href="Appointment.jsp">Appointment</a></li>
			<li><a href="Service.jsp">Services</a></li>
			<li><form target="external" action="http://www.google.com/search" method="get">
					<input type="search" name="q" placeholder="Search....." />
				</form></li>
			<li><a href="Login.jsp">Login</a></li>
		</ul>
	</div>
	
</body>
</html>