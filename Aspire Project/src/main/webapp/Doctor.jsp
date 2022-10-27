<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>

</head>
<body>
<jsp:include page = "Menu.jsp" flush = "true" />
<div class="middle">
<h1>${result}</h1>
<h1>Choose the date to get Available doctor</h1>
<form action="ListDoctorOnDate.jsp" name="Form" onsubmit="return validateForm()"method="get">
<input type="date" name="date" >
<div class="error" id="admitDateErr"></div>
<input type="submit" class="btn btn-primary" value="Check">
</form>
</div>

<div class="vertical-menu">
<a href="MyPatientDetail.jsp"onclick="return access()"  >Get My Patients</a>
<a href="ListOfDoctors.jsp">List Of Doctors</a>
  
</div>

</body>
</html>