<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Report</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script type="text/javascript">
  window.onload = function () {
    var displayAppointment = ${displayAppointment};
    var displayInPatient = ${displayInPatient};
    if (displayAppointment) {
       document.getElementById("AppointmentTable").classList.toggle("hidden");
    }
    if (displayInPatient) {
        document.getElementById("PatientTable").classList.toggle("hidden");
     }
  }
	
</script>
<style>
.align {
	border: 3px blue;
	position: absolute;
	color:green;
	left:30%;
}
.hidden {
  display: none;
}
.button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px 14px;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>
	<jsp:include page="Menu.jsp"></jsp:include>
	<form action="PatientReportServlet" method="post">
		<div class="row justify-content-evenly p-t-20 p-l-150">
			<div class="container col-4">
				<div class="form-outline input-group">
					<span class="input-group-text"><i class="bi bi-telephone"></i></span>
					<input type="text" name="phonenumber" class="form-control form-control-lg" placeholder="Enter phonenumber" required>
				</div>
			</div>
			<div class="container col-4">
				<div class="form-outline input-group">
					<span class="input-group-text"><i class="bi bi-laptop  "></i></span>
					<select name="type" id="type" class="form-control form-control-lg" required>
						<option value="">Choose Type</option>
						<option value="Appointment">Appointment</option>
						<option value="InPatient">In Patient</option>
						<option value="OutPatient">Out Patient</option>
						
					</select>
				</div>
			</div>
			<div class="container col-4">
				<input type="submit" class="button" value="Get" >
			</div>
		</div>
	</form>
	<h2 style="color: blue" class="text-center p-t-30">${result}</h2> 
	<div id="AppointmentTable" class="hidden">
	<c:if test="${empty myAppointmentList}">
		<h1 class="align p-t-10">Your Appointment is not available</h1>
		</c:if>
		<c:if test="${not empty myAppointmentList}">
	<div class="container  p-t-10" >
		<table class="table table-striped table-bordered table-hover">
			<thead class="bg-primary">
				<tr>
					<th>Id</th>
					<th>Doctor Id</th>
					<th>Name</th>
					<th>Reason</th>
					<th>Date</th>
					<th>Time Slot</th>
					<th>Status</th>
					<th>Action</th>
					
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${myAppointmentList}" var="appointment">				
				<tr>
					<td>${appointment.appointmentId}</td>
					<td>${appointment.doctorId}</td>
					<td>${appointment.name}</td>
					<td>${appointment.issue}</td>
					<td>${appointment.date}</td>
					<td>${appointment.timeSlot}</td>
					<td>${appointment.status}</td>

				</tr>
			</c:forEach>
				
				
			</tbody>
		</table>
		<a href="javascript:history.back()" class="btn btn-success" >Back</a>
	</div>
	</c:if>
</div>
	<div id="PatientTable" class="hidden">
		<c:if test="${empty patientList}">
			<h1 class="align">Patient is not available</h1>
		</c:if>
		<c:if test="${ empty patientList}">
			<h1 class="p-t-20" style="text-align: center; color: purple">List
				Of Patient</h1>
			<table class="table table-striped table-bordered table-hover">
				<thead class="bg-primary">
					<tr>
						<th>Patient Id</th>
						<th>Doctor Id</th>
						<th>Name</th>
						<th>Address</th>
						<th>Phone number</th>
						<th>Issue</th>
						<th>Blood group</th>
						<th>Gender</th>
						<th>Type</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${patientList}" var="patient">
						<tr>
							<td>${patient.patientId}</td>
							<td>${patient.doctorId}</td>
							<td>${patient.name}</td>
							<td>${patient.address}</td>
							<td>${patient.phonenumber}</td>
							<td>${patient.issue}</td>
							<td>${patient.bloodGroup}</td>
							<td>${patient.gender}</td>
							<td>${patient.type}</td>
							<td>${patient.status}</td>
							<td></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>