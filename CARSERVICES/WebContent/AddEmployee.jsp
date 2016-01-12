<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddEmployee</title>
<script type="text/javascript" src="CarValidation.js"></script>
<script type="text/javascript">
 
</script>



</head>
<body>
	<form name="myform" action="EmployeeServlet" method="post">
		<table align="left">
			<tr>
				<td>Employee Id</td>
				<td><input type="text" name="employeeid" maxlength="7"
					onkeypress=" return alphaNumeric(employeeid.value)"></td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td><input type="text" name="employeename" minlength="4"
					onkeypress="return lettersOnly(event)"></td>
			</tr>
			<tr>
				<td>Designation</td>
				<td><select name="List">
						<option value="0">--Select--</option>
						<option value="Account Manager">Account Manager</option>
						<option value="Builling Department">Billing Department</option>
				</select></td>
			</tr>
			<tr>
				<td>MobileNo.</td>
				<td><input type="text" name="mobileNo" id="moblieno" maxlength="10"
					onkeypress="return isNumber(event)"></td>
			</tr>
			<tr>
				<td>Email ID</td>
				<td><input type="text" name="emailid" id="emailid"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea name="address" rows="4" cols="34"></textarea></td>
			</tr>
			<tr>
				<td>joinning Date</td>
				<td><input type="text" name="joiningdate"></td>
			</tr>
			<tr>
				<td>Previous Experience</td>
				<td><input type="text" name="prevoiusexperience"></td>
			</tr>
			<tr>
				<td><input type="submit" name="Submit" value="Submit"
					onclick="return validation()"></td>
				<td><input type="reset" name="Reset"></td>
			</tr>
		</table>
	</form>
</body>
</html>