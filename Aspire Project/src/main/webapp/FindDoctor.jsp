<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<style>
.button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px 15px;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
	<form action="DoctorServlet" method="post">
		<div class="row justify-content-evenly p-t-20 p-l-70">
			<div class="container col-2">
				<div class="form-outline input-group">
					<span class="input-group-text"><i class="bi bi-person-bounding-box"></i></span>
					<input type="text" name="name" class="form-control form-control-lg" placeholder="Enter name" >
				</div>
			</div>
			<div class="container col-3">
				<div class="form-outline input-group">
					<span class="input-group-text"><i class="bi bi-gear-fill  "></i></span>
				<select  name="specialization" class="form-control form-control-lg">
				                <option value="">Choose Specialization</option>
				                <option value="Computer">Computer</option>
								<option value="General Medicine">General Medicine</option>
								<option value="Orthopedics">Orthopedics</option>
								<option value="ENT">ENT</option>
								<option value="General Surgery">General Surgery</option>
								<option value="Dental">Dental</option>
								<option value="Anaesthesiology">Anaesthesiology</option>
								<option value="Physician">Physician</option>
								<option value="Other">Other</option>
				</select>	
				</div>
			</div>
			<div class="container col-2">
			<div class="form-group input-group">
				<span class="input-group-text"><i class="bi bi-calendar-date  "></i></span> 
					<input type="date" name="date" class="form-control form-control-lg"
				     placeholder="Choose Date">
			</div>
			</div>
			<div class="container col-2">
			<div class="form-group input-group ">
				<span class="input-group-text"><i class="bi bi-clock  "></i></span> 
				<select  name="time" class="form-control form-control-lg">
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
			</div>
			<div class="container col-1">
				<input type="submit" class="button" value="Get" >
			</div>
		</div>
	</form>
	<h2 style="color: blue" class="text-center p-t-30">${result}</h2>
</body>
</html>