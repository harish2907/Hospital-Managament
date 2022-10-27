<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receptionist</title>
<link rel="stylesheet" type="text/css" href="styles/form.css" />

</head>
<body>
<jsp:include page = "Menu.jsp" flush = "true" />
<div class="pt-10">  
  <div class="global-container">  
    <div class="card login-form">  
    <div class="card-body">  
        <h3 class="card-title text-center"> Receptionist Login </h3> 
        <h4 style="color: blue" class="card-title text-center">${result}</h4> 
        <div class="card-text">  
            <form action="ReceptionServlet" method="get">  
                <div class="form-group">
                <i class="fa fa-user icon"></i>  
                    <label for="adminid"> Enter  Id </label>  
                    <input type="number" name="receptionid" class="form-control form-control-lg" id="adminid"required>  
                </div>  
                <div class="form-group">  
                 <i class="fa fa-key icon"></i>
                    <label for="Password">Enter Password </label>  
                    <a href="#" style="float:right;font-size:12px;"> Forgot password? </a>  
                    <input type="password"name="password" class="form-control form-control-lg" id="Password" required>  
                </div>  
                <input type="submit" name="btnname" value="Login" class="btn btn-primary btn1-block"/>  
                  
                <div class="sign-up">  
                    Don't have an account? <a href="RegisterReception.jsp"> Create One </a>  
                </div>  
            </form>  
        </div>  
    </div>  
</div>  
</div> 
</div> 
</body>
</html>