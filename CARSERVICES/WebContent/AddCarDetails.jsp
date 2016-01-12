<%@page import="bean.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddCarDetails</title>

<script src="js/jquery-2.1.4.js"></script>
 <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script type="text/javascript" src="validationform.js"></script>

<script type="text/javascript">
function myFunction() {
    var x = document.getElementById("carcolor");
    var y=document.getElementById("carcolor1");
    y.value=x.value;
}
</script>
<script type="text/javascript">
$(document).ready(function(){
   $('.name').keyup(function(){
	    $(this).val($(this).val().toUpperCase());
	});

});
</script>
</head>
<body>
<form  name="myform" action="CarServlet" method="post" >
<%String str=(String)session.getAttribute("carregdno");
session.setAttribute("carregno", str);
%>


<div >
<fieldset>
<legend>Personal Details:</legend>
<table>

	<tr>
		<td>Name of the Owner:</td>
		<td><input type="text" name="nameoftheowner" id="owner-name" class="name"
		onkeypress="return lettersOnly(event)" maxlength="20"></td>
		
	</tr>
	<tr>
		<td>Occupation:</td>
		<td><input type="text" name="occupation" class="name"></td>
		
	</tr>
	<tr>
		<td>Address:</td>
		<td><input type="text" name="address" class="name"></td>
		
	</tr>
	<tr>
		<td>Location:</td>
		<td><input type="text" name="location" class="name"></td>
		<td></td>
		<td>City:</td>
		<td><input type="text" name="city" class="name"></td>
		
	</tr>
	
	<tr>
		<td>State:</td>
		<td><input type="text" name="state" class="name"></td>
		<td></td>
		<td>Pin code:</td>
		<td><input type="text" name="pincode" maxlength="6" class="name"></td>
	</tr>
	<!-- <tr>
		<td>Pin code:</td>
		<td><input type="text" name="Pin code:"></td>
	</tr> -->
	<tr>
		<td>Land Number:</td>
		<td><input type="text" name="landnumber" id="landnumber"
		maxlength="11" onkeypress="return isNumber(event)" class="name"></td>
		<td></td>
		<td>Mobile Number:</td>
		<td><input type="text" name="mobilenumber" id="mobilenumber"
		maxlength="10" onkeypress="return isNumber(event)" class="name"></td>
	</tr>
	<tr>
		<td>Email ID:</td>
		<td><input type="text" name="emailid" id="emailid" class="name"></td>
	</tr>
</table>
</fieldset>
</div><br>
<div>
<fieldset>
<legend>Car Details</legend>
<table>
	<tr>
		<td>Car Regd. Number:</td>
		<td><input type="text" disabled="disabled" <%-- value=<%=str %> --%> value="<%=(String)session.getAttribute("carregdno") %>"  name="carregdnumber"  id="carregdnumber"  maxlength="10"
		onkeypress="return isAlphaNumeric(str)"></td>
		<td></td>
		<td>Car KMs:</td>
		<td><input type="text" name="carkms" id="carkms" onkeypress="return isNumber(event)"></td>
	</tr>
	<tr>
		<td>Car Make:</td>
		<td><input type="text" name="carmake" id="carmake" onkeypress="return isNumber(event)"></td>
		<td></td>
		<td>Car Model:</td>
		<td><input type="text" name="carmodel" id="carmodel" onkeypress="return isNumber(event)"></td>
	</tr>
	
	<tr>
		<td>Mft.Year of Regd.</td>
		<td><input type="text" name="mftyearofregd" id="mftyearofregd" onkeypress="return isNumber(event)"></td>
		<td></td>
		<td>Date of  Registration:</td>
		<td><input type="text" name="dateofregistration" id="dateofregistration" onkeypress="return isNumber(event)"></td>
	</tr>
	
	<tr>
		<td>Engine Number:</td>
		<td><input type="text" name="enginenumber" id="enginenumber" onkeypress="return isNumber(event)"></td>
		<td></td>
		<td>Chassis Number:</td>
		<td><input type="text" name="chassisnumber" id="chassisnumber" onkeypress="return isNumber(event)"></td>
	</tr>
	
	<tr>
		<td>Type of Fuel:</td>
		<td><input type="text" name="typeoffuel" id="typeoffuel" onkeypress="return lettersOnly(event)"></td>
		<td></td>
		<td>Car Color:</td>
		<td><input type="text" name="carcolor" id="carcolor" onkeypress="return lettersOnly(event)"  onkeyup="return myFunction()"  class="name"></td>
	</tr>
	
</table>
</fieldset>
</div>
<br>
<div>
<fieldset>


<legend>Policy Details</legend> 
<table>
<tr>
		<td>Insurance Company Name:</td>
		<td></td>
		<td><input type="text" name="insurancecompanyname" id="insurancecompanyname" onkeypress="return lettersOnly(event)" class="name"></td>
		
	</tr>
	<tr>
		<td>Policy Number:</td>
		<td></td>
		<td><input type="text" name="policynumber" id="policynumber" onkeypress="return isNumber(event)" class="name"></td>
	</tr>
	<tr>
		<td>Cover Note Number:</td>
		<td></td>
		<td><input type="text" name="covernotenumber" id="covernotenumber" onkeypress="return isNumber(event)" class="name"></td>
	</tr>
	<tr>
		<td>Car Color:</td>
		<td></td>
		<td><input type="text" name="carcolor1" id="carcolor1" disabled="disabled" class="name"   ></td>
	</tr>
<tr>
<td>
Period of Insurance :
<td>From</td>
<td><input type="text" name="periodofinsurancefrom" id="periodofinsurance" class="name"></td>
<td>To</td>
<td><input type="text" name="periodofinsuranceto" id="periodofinsurance" class="name"></td>

</tr>
<tr>
<td>
Period of Pollution :
<td>From</td>
<td><input type="text" name="periodofpollutionfrom" id="periodofpollution" class="name"></td>
<td>To</td>
<td><input type="text" name="periodofpollutionto" id="periodofpollution" class="name"></td>

</tr>
</table>
</fieldset>
</div>
<div>
<table align="center">
<tr>
<td> <button type="submit" class="btn btn-submit"
  onclick="return validation()" >SUBMIT</button></td>
  <td> <button type="reset" class="btn btn-reset">RESET</button></td>   
  <td>
 
  <button type="" class="btn btn-submit" value="BACK"> BACK</button>
  
  </td>
</tr>
</table>
</div>
</form>

</body>
</html>