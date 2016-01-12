<%@page import="dao.DBConnection"%>
<%@page import="bean.EmployeeBean"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function getDetails()
{
	var eid=document.getElementById("demo");
	
}

</script>
</head>
<body>
<form action="UpdateEmployeeServlet" method="post">
<table>
<tr><td>Select EmployeeId</td>
<td>
    <select type="droupdown"  onclick="getDetails()" name="employeeid">
     <%
        ArrayList<EmployeeBean> arrayobj = new ArrayList<EmployeeBean>();
        DBConnection db=new DBConnection();
        arrayobj=db.allDetails();
        Iterator it=arrayobj.iterator();
        while(it.hasNext())
        {
        	EmployeeBean employeebean=(EmployeeBean)it.next();
      	  %>
      	  <option value=<%=employeebean.getEmployeeId() %>><%=employeebean.getEmployeeId() %></option>
      	  
      <%	  
        }
    %>
    </select>
    </td>
    <td><input type="submit" value="select"></td>
    </tr>
   
</table>


    	  <% 
 
     String employeeid="ds-1204";//request.getParameter("employeeid");
     EmployeeBean employeebean=new EmployeeBean();
     //EmployeeBean employeebean=null;
     employeebean.setEmployeeId(employeeid);

      ArrayList<EmployeeBean> arrayobj1 =new ArrayList<EmployeeBean>();
      DBConnection dbc=new  DBConnection();
      arrayobj1=dbc.allDetails(employeebean);
      Iterator itr=arrayobj1.iterator();
      while(itr.hasNext())
      {
    	   employeebean=(EmployeeBean)itr.next();
    	  
      }
  %>
    	  
 
<table>



<tr><td>Employee Name</td>
<td><input type="text" name="employeename" value=<%=employeebean.getEmployeeName()%>></td></tr>

<tr><td>Designation</td>
				<td><input type="text" name="designatione" value=<%=employeebean.getDesignation()%>  ></td></tr>
<tr><td>MobileNo</td>
				<td><input type="number" name="mobileNo" value=<%=employeebean.getMobileNo()%>></td></tr>
<tr> <td>EmailId</td>
				<td><input type="text" name="emailid" value=<%=employeebean.getEmailId()%>></td></tr>
<tr><td>Address</td>
				<td><input type="text" name="address" value=<%=employeebean.getAddress()%>></td></tr>
<tr><td>JoiningDate</td>
				<td><input type="text" name="joiningDate" value=<%=employeebean.getJoiningDate()%>></td></tr>
<tr><td>PreviousExperience</td>
				<td><input type="text" name="previousexperience" value=<%=employeebean.getPreviousExperience()%>></td></tr>
				<tr>
				<td><input type="button" name="update" value="Update" ></td>
   <td><input type="button" name="cancel" value="Cancel"></td></tr>
				
 		  			 				
</table>

</form>
</body>
</html>