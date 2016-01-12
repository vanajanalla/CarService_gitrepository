<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JobSheet</title>
</head>
<body>
	<form action="ServiceServlet" method="post">
		<h2>*****JOB SHEET DETAILS*****</h2>

		<div>

			<table>
			<%
			String ownername=(String) session.getAttribute("ownername");
			session.setAttribute("ownername", ownername);
			%>
				<tr>
					<td>Owner Name</td>
					<td><input type="text" name="ownername" id="ownername"
						disabled="disabled"
						value=<%=ownername%>></td>
					<br>
					<%
					String ownerid=(String)session.getAttribute("ownerid");
					session.setAttribute("ownerid", ownerid);
					%>
					<td>Owner ID</td>
					<td><input type="text" name="ownerid" id="ownerid"
						disabled="disabled"
						value=<%=ownerid%>></td>
				</tr>
				<%
				  String carregdno=(String)session.getAttribute("carregdno");
				session.setAttribute("carregdno", carregdno);
				%>
				<tr>
					<td>Car Regd No</td>
					<td><input type="text" name="carregdno" id="carregdno"
						disabled="disabled"
						value=<%=carregdno%>></td>
				</tr>
				<tr>
					<td>Car KMs</td>
					<td><input type="text" name="carkms" id="carkms"
						disabled="disabled" value=<%=carregdno%> ></td>
				</tr>
				<tr>
					<td>Mobile No</td>
					<td><input type="text" name="mobileno" id="mobileno"
						disabled="disabled"
						value=<%=(Long) session.getAttribute("ownermobile")%>></td>
				</tr>
			</table>
		</div>
		<br>

		<h2>*****SERVICES*****</h2>
		<div>
			<table>

				<tr>
					<td>1.Waterwash</td>
					<td><input type="checkbox" name="option" value="waterwash"></td>
				</tr>
				<tr>
					<td>2.Engine Oil Change</td>
					<td><input type="checkbox" name="option"
						value="engineoilchange"></td>
				</tr>
				<tr>
					<td>3.Tyres and Wheels Alignment</td>
					<td><input type="checkbox" name="option"
						value="tyresandwheelsalignment "></td>
				</tr>
				<tr>
					<td>4.Batteries</td>
					<td><input type="checkbox" name="option" value="batteries"></td>
				</tr>
				<tr>
					<td>5.Brake Systems Repair</td>
					<td><input type="checkbox" name="option" value="Brake Systems Repair"></td>
				</tr>
				<tr>
					<td>6.Drivelines</td>
					<td><input type="checkbox" name="option" value="Drivelines"></td>
				</tr>
				<tr>
					<td>7.Electrical Systems</td>
					<td><input type="checkbox" name="option" value="Electrical Systems"></td>
				</tr>
				<tr>
					<td>8.Fluid Exchange Services</td>
					<td><input type="checkbox" name="option" value="Fluid Exchange Services"></td>
				</tr>
				<tr>
					<td>9.Air Conditioning,Oil, Lube and Filter Services</td>
					<td><input type="checkbox" name="option" value="Air Conditioning,Oil, Lube and Filter Services 	"></td>
				</tr>
				<tr>
					<td>10.Steering and Suspension Systems</td>
					<td><input type="checkbox" name="option" value="Steering and Suspension Systems"></td>
				</tr>
				<tr>
					<td>11.Door Locks And Hingess</td>
					<td><input type="checkbox" name="option" value="Door Locks And Hingess"></td>
				</tr>
			</table>
		</div>
	
						<div>
							<input type="submit" name="submit " value="SUBMIT" align="middle">
						</div></td>
				</tr>

			</table>
		</div>
	</form>
</body>
</html>