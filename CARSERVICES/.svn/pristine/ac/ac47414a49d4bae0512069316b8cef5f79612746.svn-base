<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="bean.*" %>
<%@page import="dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>top_adminView</title>

<script type="text/javascript">
function addEmployee() 
{
	document.getElementById("ae").href;
	
}
</script>
<style>
table,th,td{
border: 1px solid black;
border-collapse: collapse;
}
th.td{
padding:15px;
font-family: Footlight MT Light;
}
</style>
</head>
<body>
<%
  String adminid=(String)session.getAttribute("AdminId");
  %>
  <%
  	AdminBean adminbean=new AdminBean();
  adminbean.setAdminId(adminid);
    	DBConnection connect=new DBConnection(); 
    	String adminname=connect.getUserName(adminbean);
  %>
	<h1 align="right"><% 
	out.print("Welcome "+adminname);
	%></h1>
<form action="LogoutServlet" method="post">
<input type="submit" name="logout" value="Logout"  style="float:right;" >
</form>
<table>
<tr>
<td><a id="ae" href="Employee.html" target="frame_employee">AddEmployee</a><label for="AddEmployee"></label></td>
<td><a id="ve" href="ViewEmployee.jsp" target="frame_employee">ViewEmployee</a><label for="ViewEmployee"></label></td>
<td><a id="db" href="DataBackUp.jsp" target="frame_employee">DataBackup</a><label for="DataBackup"></label></td>
</tr>
</table>
 
</body>
</html>


