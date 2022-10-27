<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script type="text/javascript">
	window.onload = function() {
		var displayAppointment = $
		{
			displayAppointment
		}
		;
		var displayStaff = $
		{
			displayStaff
		}
		;
		var displayPatient = $
		{
			displayPatient
		}
		;
		if (displayAppointment) {
			document.getElementById("AppointmentTable").classList
					.toggle("hidden");
		}
		if (displayStaff) {
			document.getElementById("StaffTable").classList.toggle("hidden");
		}
		if (displayPatient) {
			document.getElementById("PatientTable").classList.toggle("hidden");
		}
	}
</script>
<style>
input[type=submit] {
	width: 200px;
	background-color: #eee;
	border: none;
	color: black;
	display: block;
	padding: 16px 32px;
	text-decoration: none;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #ccc; /* Dark grey background on mouse-over */
}

.hidden {
	display: none;
}

.align {
	border: 3px blue;
	position: absolute;
	top: 20%;
	left: 40%;
	color: green;
}
</style>
</head>
<body>
	<jsp:include page="Menu.jsp" flush="true" />
	<div class="container">
		<div class="row align-items-start">
			<div class="col">
				<div class="vertical-menu">
					<form action="AdminIndexServlet" method="post">
						<input type="hidden" name="info" value="${info}"> <input
							type="submit" name="btnname" value="Edit Profile"> <input
							type="submit" name="btnname" value="ListAppointment"> <input
							type="submit" name="btnname" value="ListStaff"> <input
							type="submit" name="btnname" value="ListPatient">
					</form>
				</div>
			</div>
			<div class="col">
				<div id="AppointmentTable" class="hidden">
					<c:if test="${empty appointmentList}">
						<h1 class="align">Appointment is not available</h1>
					</c:if>
					<c:if test="${not empty appointmentList}">
						<h1 class="p-t-20" style="text-align: center; color: purple">List
							Of Appointments</h1>
						<table class="table table-striped table-bordered table-hover">
							<thead class="bg-primary">
								<tr>
									<th>Appointment Id</th>
									<th>Doctor Id</th>
									<th>Name</th>
									<th>Address</th>
									<th>Phone number</th>
									<th>Reason</th>
									<th>Date</th>
									<th>Time Slot</th>
									<th>Blood group</th>
									<th>Gender</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${appointmentList}" var="appointment">
									<tr>
										<td>${appointment.appointmentId}</td>
										<td>${appointment.doctorId}</td>
										<td>${appointment.name}</td>
										<td>${appointment.address}</td>
										<td>${appointment.phonenumber}</td>
										<td>${appointment.issue}</td>
										<td>${appointment.date}</td>
										<td>${appointment.timeSlot}</td>
										<td>${appointment.bloodGroup}</td>
										<td>${appointment.gender}</td>
										<td>${appointment.status}</td>
										<td></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
				</div>
			</div>

			<div class="col">
				<div id="PatientTable" class="hidden">
					<c:if test="${empty patientList}">
						<h1 class="align">Patient is not available</h1>
					</c:if>
					<c:if test="${not empty patientList}">
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
			</div>
			<div class="col">

				<div id="StaffTable" class="hidden">
					<c:if test="${empty staffList}">
						<h1 class="align">Staff is not available</h1>
					</c:if>
					<c:if test="${not empty staffList}">
						<h1 class="p-t-20" style="text-align: center; color: purple">List
							Of Staffs</h1>
						<table class="table table-striped table-bordered table-hover">
							<thead class="bg-primary">
								<tr>
									<th>Staff Id</th>
									<th>Name</th>
									<th>Address</th>
									<th>Phone number</th>
									<th>Email</th>
									<th>Aadhar number</th>
									<th>Type</th>
									<th>Qualification</th>
									<th>Specialization</th>
									<th>Joined Date</th>
									<th>Gender</th>
									<th>Blood group</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${staffList}" var="staff">
									<tr>
										<td>${staff.getStaffId()}</td>
										<td>${staff.getName()}</td>
										<td>${staff.getAddress()}</td>
										<td>${staff.getPhonenumber()}</td>
										<td>${staff.getEmail()}</td>
										<td>${staff.getAadharnumber()}</td>
										<td>${staff.getType()}</td>
										<td>${staff.getQualification()}</td>
										<td>${staff.getSpecialization()}</td>
										<td>${staff.getJoinedDate()}</td>
										<td>${staff.getGender()}</td>
										<td>${staff.getBloodGroup()}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
				</div>

			</div>
		</div>
	</div>
</body>
</html>