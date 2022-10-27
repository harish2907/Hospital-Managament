<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/form.css" />
<link rel="stylesheet" type="text/css" href="styles/main.css" />
<script type="text/javascript" src="javascript/Validation.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
	
<style>

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

	<form action="StaffServlet" name="Form" method="post">
	<div class="row justify-content-evenly">
		<div class="container col-4 ">
			
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
						<span class="input-group-text"><i class="bi bi-envelope  "></i></span>
					    <input type="text" name="email" class="form-control form-control-lg" placeholder="Enter email">
					</div>
					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-person-circle  "></i></span> 
						<input type="text" name="aadharnumber" class="form-control form-control-lg" placeholder="Enter aadharnumber">
					</div>
					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-laptop  "></i></span>
						<select  name="type" class="form-control form-control-lg">
				                <option value="">Choose Type</option>
								<option value="Admin">Admin</option>
								<option value="Reception">Reception</option>
								<option value="Doctor">Doctor</option>
								<option value="Nurse">Nurse</option>
								<option value="Other">Other</option>								
				       </select>
					</div>
				</div>
			
		
		<div class="container col-4 ">
			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-book  "></i></span>
				<select  name="qualification" class="form-control form-control-lg" required>
				                <option value="">Choose Qualification</option>
								<option value="MBBS">MBBS</option>
								<option value="MD">MD</option>
								<option value="BDS">BDS</option>
								<option value="B.Sc">B.Sc</option>
								<option value="M.Sc">M.Sc</option>
								<option value="B.E">B.E</option>
								<option value="Other">Other</option>							
				</select>					 
			</div>

			<div class="form-group input-group  p-3">
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

			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-calendar-date  "></i></span> 
					<input type="date" name="joineddate" class="form-control form-control-lg"
				     placeholder="Joined Date">
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
			<input type="submit" name="btnname" value="Register" class="button">
			</div>
		</div>
		</div>
	</form>
    <div class="text-center" >
       <h3>Already have an Account?</h3> 
		<a href="Login.jsp" class="btn btn-info">Login</a>
    </div>

</body>
</html>