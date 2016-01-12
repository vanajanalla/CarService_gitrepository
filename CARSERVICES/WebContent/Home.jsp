<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<script type="text/javascript" src="FormValidation.js">
</script>
</head>
<body>
<h1 align="center">WELCOME TO CARZSERVICING</h1>
<form name="form" action="EmployeeLoginServlet" method="post">
<h1>Employee Login</h1>
LoginId <input type="text" name="EmployeeId" id="empid"  onkeypress="return alphaNumeric(inputtext)" ><br>
Password<input type="password" name="Employeepswd"  id="emppassword" onkeypress="return isNumber(event) "><br>

<br>
<input type="submit" name="login" value="LOGIN" onclick="return employeeValidate() ">
<input type="reset"  value="RESET" >



</form>

</body>
</html>