<%@page import="java.util.Date"%>
<%@page import="bean.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript">
function ValidateForm(myform){
	ErrorText= "";
	
	

	 if( myform.BillingService[0].checked == true)
		{
		location.href="AddCarDetails.jsp";
		}
	else if(myform.BillingService[1].checked ==true)
		{
		location.href="jobSheet.jsp";
		return true;
		}
	else if(myform.BillingService[2].checked ==true)
	{
	location.href="";
	}
	else if(myform.BillingService[3].checked ==true)
	{
	location.href="";
	}
	else 
	if(myform.BillingService[4].checked ==true)
	{
	location.href="Print.jsp";
	}
	}
</script> 



</head>
<body>
<form name="myform" action=" " method="post">

 <%

String EmploeeId=(String)session.getAttribute("EmployeeId");
 
%> 


<%
 	EmployeeBean employeebean=new EmployeeBean();
    employeebean.setEmployeeId(EmploeeId);
    DBConnection logindatabase=new DBConnection();
    String EmployeeName=logindatabase.getUserName(employeebean);
 %>
   <h1 align="right"><% 
	out.print("Welcome "+EmployeeName);
	%></h1>
<div align="right">
Date:
<%= new java.util.Date()  %>
</div>

<br><br>
 <input type="radio" name="BillingService" value="Register for a CarService">Register for a CarService<br>
<input type="radio" name="BillingService" value="Already Register for a CarService">Already Register for a CarService<br>
<input type="radio" name="BillingService" value="Billing a Car">Billing a Car<br>
<input type="radio" name="BillingService" value="Send invoice to AccountManage">Send invoice to AccountManager<br> 
<input type="radio" name="BillingService" value="Print invoice of a Car" >Print invoice of a Car<br>

<input type="button" name="OK" VALUE="OK"  onclick=" ValidateForm(myform)">
</form>

<form align="center"  action="JobSheet" method="post"> 
 <input type="text" name="carRegNo" placeholder="Car Registrion Number"  width="48" height="48">



<input type="submit" value="submit"  >
 
</form>

</body>
</html>