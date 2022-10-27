<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="styles/main.css">
	<script type="text/javascript" src="javascript/Validation.js"></script>
<!--===============================================================================================-->
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic" >
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form action="LoginServlet" method="post" class="login100-form ">
					<span class="login100-form-title">
						Login
					</span>
				   <h4 style="color:blue;padding-bottom:10px;" class="card-title text-center ">${result}</h4>
					<div class="wrap-input100" >
						<input class="input100" type="text" name="info" placeholder="Email or Phonenumber" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="error" id="nameErr"></div>
					<div class="wrap-input100">
						<input class="input100" type="password" name="password" placeholder="Password" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>					
					</div>
					<div class="error" id="passwordErr"></div>
					<div class="container-login100-form-btn">
						<input type="submit" name="btnname" class="login100-form-btn" value="Login">
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt3" href="#">
							 Password?
						</a>
					</div>

					<div class="text-center p-t-50">
						<a class="txt5" href="Register.jsp">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>