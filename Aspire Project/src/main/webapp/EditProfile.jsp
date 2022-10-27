<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
<style>
span{
width:110px;

}
.button{
  border: none;
  color: white;
  padding: 5px 14px;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
<h2 style="color:green;padding-top:10px;" class="text-center">${result}</h2>
<form action="StaffServlet" name="Form" method="post">
	<div class="row justify-content-evenly">
		<div class="container col-4 ">	
					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-laptop  "></i>&nbsp;ID</span>
						<div class="form-control form-control-lg">${staff.getStaffId()}</div>
						<input type="hidden" name="staffId"  value="${staff.getStaffId()}">
					</div>	
					<div class="form-group input-group p-3 ">
						 <span class="input-group-text"><i class="bi bi-person-bounding-box "></i>&nbsp;NAME</span>
						 <input type="text" name="name" class="form-control form-control-lg "  placeholder="Enter Name" value="${staff.getName()}">
					</div>

					<div class="form-group input-group p-3">
						<span class="input-group-text"><i class="bi bi-journal-album  "></i>&nbsp;ADDRESS</span>
					     <input type="text" name="address"class="form-control form-control-lg" placeholder="Enter Address" value="${staff.getAddress()}">
					</div>

					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-telephone  "></i>&nbsp;PHONENUMBER</span> 
						<input type="text" name="phonenumber" class="form-control form-control-lg" placeholder="Enter phonenumber" value="${staff.getPhonenumber()}">
					</div>
					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-envelope  "></i>&nbsp;EMAIL</span>
					    <input type="text" name="email" class="form-control form-control-lg" placeholder="Enter email" value="${staff.getEmail()}">
					</div>
					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-person-circle  "></i>&nbsp;AADHAR NUMBER</span> 
						<input type="text" name="aadharnumber" class="form-control form-control-lg" placeholder="Enter aadharnumber" value="${staff.getAadharnumber()}">
					</div>
					<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-laptop  "></i>&nbsp;ROLE</span>
						<div class="form-control form-control-lg">${staff.getType()}</div>
					</div>
				</div>
			
		
		<div class="container col-4 ">
			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-book  "></i>&nbsp;QUALIFICATION</span>
				<select  name="qualification" class="form-control form-control-lg" required>
				                <option value="${staff.getQualification()}">${staff.getQualification()}</option>
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
				<span class="input-group-text"><i class="bi bi-gear-fill  "></i>&nbsp;SPECIALIZATION</span>
				<select  name="specialization" class="form-control form-control-lg">
				                <option value="${staff.getSpecialization()}">${staff.getSpecialization()}</option>
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
				<span class="input-group-text"><i class="bi bi-calendar-date  ">&nbsp;JOINED DATE</i></span> 
					<div class="form-control form-control-lg">${staff.getJoinedDate()}</div>
			</div>
			<div class="form-group input-group  p-3">
				<span class="input-group-text"><i class="bi bi-droplet-fill  "></i>&nbsp;BLOOD GROUP</span> 
				<select  name="bloodgroup" class="form-control form-control-lg">
				                <option value="${staff.getBloodGroup()}">${staff.getBloodGroup()}</option>
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
				<span class="input-group-text"><i class="bi bi-people  " >&nbsp;GENDER</i></span>
				<select id="gender" name="gender" class="form-control form-control-lg">
								<option value="${staff.getGender()}">${staff.getGender()}</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>					
			</div>
			<div class="form-group input-group  p-3">
						<span class="input-group-text"><i class="bi bi-lock  "></i>&nbsp;PASSWORD</span> 
						<input type="password" name="password" class="form-control form-control-lg" placeholder="Enter password" value="${staff.getPassword()}">
					</div>
			
		</div>
		</div>
		<div style="padding-left:550px">
		<input type="submit"  name="btnname" value="Update" class="button btn btn-success">
		<a href="javascript:history.back()" class="button btn btn-info" >Back</a>
		</div>
		
	</form>
</body>
</html>