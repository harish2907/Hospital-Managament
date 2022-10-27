<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctorIndex</title>
</head>
<body>
<jsp:include page = "Menu.jsp" flush = "true" />

<div class="vertical-menu">
<form action="ReceptionIndexServlet" method="post">
  <a href="EditReception.jsp?receptionid=${loginid}">Edit profile</a>
  <a href="AddInPatient.jsp">Add Patient</a>
  <a href="PatientDetail.jsp">Patient Detail</a> 
  <a href="ListPatients.jsp">List Patients</a>
 </form>
</div>
<h1> ${result}</h1>
</body>
</html>