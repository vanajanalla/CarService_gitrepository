<%@page import="java.util.Iterator"%>
<%@page import="java.util.*" %>
<%@page import="bean.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<h2>Here the Details are..........</h2>
<style>
table,th,td{
border: 1px solid black;
border-collapse: collapse;
}
th.td,h1{
padding:15px;
font-family: Footlight MT Light;
}

</style>
</head>
<body>
<%
String designation=request.getParameter("List");
%>

<%
	ArrayList<EmployeeBean> arrayemployee=new ArrayList<EmployeeBean>();
   
 DBConnection  connect=new DBConnection();
 arrayemployee=connect.getDetails(designation);
  Iterator<EmployeeBean> iterator=arrayemployee.iterator();
%>
<table>


<%
	while(iterator.hasNext())
{
	EmployeeBean employeebean=(EmployeeBean)iterator.next();
%>
<tr>
<td><%= employeebean.getEmployeeId() %></td>
<td><%=employeebean.getEmployeeName() %></td>
<td><%=employeebean.getMobileNo() %></td>
<td><%=employeebean.getEmailId() %></td>
<td><%=employeebean.getAddress() %></td>
<td><%=employeebean.getJoiningDate() %></td>
<td><%=employeebean.getPreviousExperience() %></td>

</tr>
<%} %>
</table>
</body>
</html>