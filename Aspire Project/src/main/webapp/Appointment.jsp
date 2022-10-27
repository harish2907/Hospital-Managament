<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 5px 15px;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
	<jsp:include page="Menu.jsp" flush="true" />
	<h1 style="color: green" class="card-title text-center">${result}</h1>
	<h3 class="card-title text-center p-t-20">Book Appointment</h3>
	<form action="AppointmentServlet" method="post">
		<div class="row justify-content-evenly">
			<div class="container col-4 ">

				<div class="form-group input-group p-3 ">
					<span class="input-group-text"><i
						class="bi bi-person-bounding-box  "></i></span> <input type="text"
						name="name" class="form-control form-control-lg"
						placeholder="Enter Name">
				</div>

				<div class="form-group input-group p-3">
					<span class="input-group-text"><i
						class="bi bi-journal-album  "></i></span> <input type="text"
						name="address" class="form-control form-control-lg"
						placeholder="Enter Address">
				</div>

				<div class="form-group input-group  p-3">
					<span class="input-group-text"><i class="bi bi-telephone  "></i></span>
					<input type="text" name="phonenumber"
						class="form-control form-control-lg"
						placeholder="Enter phonenumber">
				</div>
				<div class="form-group input-group  p-3">
					<span class="input-group-text"><i class="bi bi-book  "></i></span>
					<select name="reason" class="form-control form-control-lg">
						<option value="">Choose Reason</option>
						<option value="Consulting">Consulting</option>
						<option value="General">General</option>
						<option value="Eye">Eye</option>
						<option value="Teeth">Teeth</option>
						<option value="Stomach">Stomach</option>
						<option value="Fever">Fever</option>
						<option value="Head">Head</option>
						<option value="Other">Other</option>
					</select>
				</div>
			</div>


			<div class="container col-4 ">

				<div class="form-group input-group  p-3">
					<span class="input-group-text"><i
						class="bi bi-calendar-date  "></i></span> <input type="date" name="date"
						class="form-control form-control-lg" placeholder="Choose Date">
				</div>
				<div class="form-group input-group  p-3">
					<span class="input-group-text"><i class="bi bi-clock  "></i></span>
					<select name="time" class="form-control form-control-lg">
						<option value="">Choose your slot</option>
						<option value="09:00 - 10:00 AM">09:00 - 10:00 AM</option>
						<option value="10:00 - 11:00 AM">10:00 - 11:00 AM</option>
						<option value="11:00 - 12:00 PM">11:00 - 12:00 PM</option>
						<option value="12:00 - 01:00 PM">12:00 - 01:00 PM</option>
						<option value="01:00 - 02:00 PM">01:00 - 02:00 PM</option>
						<option value="02:00 - 03:00 PM">02:00 - 03:00 PM</option>
						<option value="03:00 - 04:00 PM">03:00 - 04:00 PM</option>
						<option value="04:00 - 05:00 PM">04:00 - 05:00 PM</option>
					</select>

				</div>
				<div class="form-group input-group  p-3">
					<span class="input-group-text"><i
						class="bi bi-droplet-fill  "></i></span> <select name="bloodgroup"
						class="form-control form-control-lg">
						<option value="">Choose Blood group</option>
						<option value="O+">O+</option>
						<option value="O-">O-</option>
						<option value="A+">A+</option>
						<option value="A-">A-</option>
						<option value="B+">B+</option>
						<option value="B-">B-</option>
						<option value="AB+">AB+</option>
						<option value="AB-">AB-</option>
					</select>

				</div>
				<div class="form-group input-group  p-3">
					<span class="input-group-text"><i class="bi bi-people  "></i></span>
					<select id="gender" name="gender"
						class="form-control form-control-lg">
						<option value="">Choose Gender</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Other">Other</option>
					</select>
				</div>
				<div class="form-group p-3">
					<input type="submit" name="btnname" value="Book" class="button">
				</div>
			</div>
		</div>
	</form>
</body>
</html>