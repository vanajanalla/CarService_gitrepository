<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="bean.*" %>
    <%@ page import="dao.DBConnection" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
var request;  
function getIdInfo()  
{  
var v=document.varform.car_reg_id.value;  
var url="Print.jsp?car_reg_id="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
}  

</script>
<script>

var x = 0;
var y = 0;
var z = 0;
function calc(obj) {
    var e = obj.id.toString();
    if (e == 'cost') {
        x = Number(obj.value);
        y = Number(document.getElementById('quantity').value);
    } else {
        x = Number(document.getElementById('cost').value);
        y = Number(obj.value);
    }
    z = x * y;
    document.getElementById('total').value = z;
    document.getElementById('update').innerHTML = z;
}

</script>

</head>
<body>
<form action="Print.jsp" method="post" name="varform">
Enter<input type="text" name="car_reg_id" placeholder="CarRegdNo/OwnerId"  id="car_reg_id" onkeyup="getIdInfo()">

</form>

 <%
String Car_Reg_Id=request.getParameter("car_reg_id");
 if(Car_Reg_Id!=null)
 {
 DBConnection connect=new DBConnection();
 HashMap<ArrayList<CarOwnerBean>,ArrayList<CarDetailsBean>> mapobj= connect.method(Car_Reg_Id);
 ArrayList<CarOwnerBean> aray=null;
 ArrayList<CarDetailsBean> array=null;
 Set set=mapobj.entrySet();
 Iterator itr=set.iterator();
 CarOwnerBean bean=null;
 CarDetailsBean bean1=null;
 while(itr.hasNext())
 {
 	Map.Entry me=(Map.Entry)itr.next();
 	aray=(ArrayList<CarOwnerBean>) me.getKey();
 	array=(ArrayList<CarDetailsBean>) me.getValue();
 }
 Iterator iterator1=aray.iterator();
 Iterator iterator2=array.iterator();
 while(iterator1.hasNext())
 {
 	 bean=(CarOwnerBean)iterator1.next();
 	
 }
 while(iterator2.hasNext())
 {
 	 bean1=(CarDetailsBean)iterator2.next();
 	
 	
 }
 if(bean==null || bean1==null)
 {
	%>
	 <script type="text/javascript">
	 alert("please enter a valid Car Registration or Owner Id");
	 </script>
<%}
 else{
 %>

<table>
<tr><td>Name<input type="text" name="name" disabled="disabled" value=<%=bean.getNameOfTheOwner()%> >
 <tr><td>CarRegdNo<input type="text" name="carregno" disabled="disabled" value=<%=bean1.getCarRegdNumber() %> > 
<tr><td>MobileNo<input type="text" name="moblieno" disabled="disabled" value=<%=bean.getMobileNumber() %> >
<tr><td>CarKms<input type="text" name="carkms" disabled="disabled" value=<%=bean1.getCarKms() %> >
</table>
<%

 String[] services= connect.getServiecs(Car_Reg_Id);
 for(int i=2;i<=services.length-1;i++)
 {
	out.println(services[i]); 
	out.println();
 }
 }
 }
 %>
 <fieldset> 
<legend>Billing:</legend>
<table>
<tr>
<td></td>
<td  style="width:200px;"><b>Items</b></td>
<td  style="width:200px;"><b>Qty</b></td>
<td  style="width:200px;"><b>Rate</b></td>
<td  style="width:200px;"><b>Amount</b></td>
</tr>
<tr>
<td>1.</td>
<td><input type="text" style="border: 0px"></td>
 <td><input type="text" id="cost" onkeyup="calc(this)"></td>
 <td><input type="text" id="quantity"  onkeyup="calc(this)"></td>
 <td><input type="text" id="total"  Value="`" ></td>
</tr><td></td>
</table>
</fieldset>

<span id="car"></span>
</body>
</html>