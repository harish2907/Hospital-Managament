<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reception Index</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script type="text/javascript">

	function displayForm(flag) {
		var inForm = document.getElementById("InPatientForm");
		var outForm = document.getElementById("OutPatientForm");
		var today = document.getElementById("today");
		if(flag==1){
			inForm.style.display = "block";
			outForm.style.display = "none";
			today.style.display = "none";
		}
		if(flag==2){
			inForm.style.display = "none";
			outForm.style.display = "block";
			today.style.display = "block";
		}

	}
	
	window.onload = function() {
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth() + 1;
		var day = today.getDate();
		if (month < 10) {
			month = '0' + month;
		}
		if (day < 10) {
			day = '0' + day;
		}
		var date = year + '-' + month + '-' + day;
		document.getElementById("date").value =date;

	}
</script> 
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
.align {
	border: 3px blue;
	position: absolute;
	color:green;
	top:15%;
	left:40%;
}
.vertical-menu input,.vertical-menu a {
	font-size: 14px;
	width: 200px;
	background-color: #eee;
	border: none;
	color: black;
	display: block;
	padding: 16px 32px;
	text-decoration: none;
	cursor: pointer;
	text-align:center;
}
input{
width:300px;
}
.vertical-menu input:hover {
	background-color: #ccc; /* Dark grey background on mouse-over */
}
.today{
top:10%;
    float:right;
    font-size: 14px;
	width: 200px;
}
</style>
</head>
<body>
	<jsp:include page="Menu.jsp" flush="true" />
	<div id="today" class="today p-t-20 p-r-20">
                    <label for="date">Date</label>
                    <input type="date" class="form-control form-control-lg" id="date" 
                      name="date">
       </div>
	<div class="vertical-menu">
		<form action="ReceptionIndexServlet" method="post">
			  <input type="hidden" name="info" value="${info}">
			  <input type="submit" name="btnname" value="Edit Profile">
		</form>
		<input type="button" onclick="displayForm(1)" value="Add In Patient">
		<input type="button" onclick="displayForm(2)" value="Add Out Patient">
	</div>
	<h1>${result}</h1>
	 
	<div id="InPatientForm">

		<form action="PatientServlet" name="InForm"  method="post" class="align">
					<div class="form-group input-group p-3 ">
						 <span class="input-group-text"><i class="bi bi-person-bounding-box  "></i></span>
						 <input type="text" name="name" class="form-control form-control-lg "  placeholder="Enter Name">
					</div>

					<div class="form-group input-group p-3">
						<span class="input-group-text"><i class="bi bi-journal-album  "></i></span>
					     <input type="text" name="address"class="form-control form-control-lg" placeholder="Enter Address">
					</div>

					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-telephone  "></i></span> 
						<input type="text" name="phonenumber" class="form-control form-control-lg" placeholder="Enter phonenumber">
					</div>
					
					
					<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-book  "></i></span>
				<select  name="reason" class="form-control form-control-lg">
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
			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-calendar-date  "></i></span> 
				<input type="date" name="date" class="form-control form-control-lg" id="date">
			</div>
			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-droplet-fill  "></i></span> 
				<select  name="bloodgroup" class="form-control form-control-lg">
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
				<span class="input-group-text"><i class="bi bi-people  " ></i></span>
				<select id="gender" name="gender" class="form-control form-control-lg">
								<option value="">Choose Gender</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>					
			</div>
			<div class="form-group p-3">
			<input type="submit" name="btnname" value="Add In" class="button">
			</div>

	</form>
	</div>
	<div id="OutPatientForm">
	 
	<form action="PatientServlet" name="OutForm"  method="post" class="align">
					<div class="form-group input-group p-3 ">
						 <span class="input-group-text"><i class="bi bi-person-bounding-box  "></i></span>
						 <input type="text" name="name" class="form-control form-control-lg "  placeholder="Enter Name">
					</div>

					<div class="form-group input-group p-3">
						<span class="input-group-text"><i class="bi bi-journal-album  "></i></span>
					     <input type="text" name="address"class="form-control form-control-lg" placeholder="Enter Address">
					</div>

					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-telephone  "></i></span> 
						<input type="text" name="phonenumber" class="form-control form-control-lg" placeholder="Enter phonenumber">
					</div>
					
					
					<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-book  "></i></span>
				<select  name="reason" class="form-control form-control-lg">
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
		
			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-droplet-fill  "></i></span> 
				<select  name="bloodgroup" class="form-control form-control-lg">
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
				<span class="input-group-text"><i class="bi bi-people  " ></i></span>
				<select id="gender" name="gender" class="form-control form-control-lg">
								<option value="">Choose Gender</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>					
			</div>
			<div class="form-group p-3">
			<input type="submit" name="btnname" value="Add Out" class="button">
			</div>

	</form>
	</div>
</body>
</html>