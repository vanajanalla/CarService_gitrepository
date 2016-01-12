function validation() 
{
	
	var empid=document.myform.employeeid.value;
	
	var empname=document.myform.employeename.value;
	
	var designation=document.myform.List.value;
	
	var phone = document.getElementById("moblieno").value;//getting the moblienumber thought the id in myform(form)
   
	var email = document.getElementById('emailid');//getting the email from the id in myform(form)
 	
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;//its for allow the name (a-z) or (A to Z)  and number (0-9)
 	
    var addr=document.myform.address.value;
    
    
    
 
	if(empid.length<7 || empid.length>7)
		{
		alert("plz enter the atleast 6 alphanumeric");
		return false;
		}

	else if(empname==null || empname=="")//here the condition for a name 
 		{
 		alert("Name can't be empty");//alter message foe name
 		empname.focus;//focus on name
 		
 		return false;//return type
 		}
	else if(designation=="0")
	{
	alert("plz select Designation");
	return false;
	}
	else if (phone.length<10) 
	{ //the condtion for the phone number with the test method
 	    alert('Please provide a valid phonenumber');//alter message for phone number
 	    phone.focus;//fouus for the phone number
 	    return false;//return type
 	 }
	/*else if(email.length<10)
			{
			alter("email must not be empty");
			email.focus;
			return false;
			}else
			{	
		return true;
		}*/
	
	
	else if (!filter.test(email.value)) {//here the condition for email with the test method
		    alert("Please provide a valid email address");//alter message
		    email.focus;//focus for the email elements
		    return false;
		 }
	else if(addr=="")
		{
		alert("enter yor address");
		return false;
		}
}





function alphaNumeric(inputtext) 
{
	  var letterNumber=/ ^[0-9a-zA-Z]+$/;
	  if(inputtext.value.match(letterNumber))
		  {
		  return true;
		  }
	  else
		  {
		  alert("plz enter the valid number");
		  return false;
		  }
	  
	
}


function lettersOnly(evt) 
{//name validation
   evt = (evt) ? evt : event;
   var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
       (evt.which) ? evt.which : 0);
   if ((charCode > 33) && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122))
   {
       return false;//return type
   }
   else
       return true;//return type
}





function isNumber(evt) {//Number validation 
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode;
    if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
        return false;//return type

    return true;
}    



function ValidateDropdown() {
var result = document.getElementById('ddlEducation').value;
if (result == "0") {
alert("Please Select Education");
}
else {
alert("Dropdownlist Selected Value is: " + result);
}
}
