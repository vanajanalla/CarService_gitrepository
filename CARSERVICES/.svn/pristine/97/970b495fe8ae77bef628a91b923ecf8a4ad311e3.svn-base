
     function validation(){
    	 alert("Welcome to page.");
    	 
        
    	 var ownerid=document.getElementById("ownerid").value;
    	  
    	 var name=document.myform.nameoftheowner.value;
     	
        var mobilenumber = document.getElementById("mobilenumber").value;
        
        var filter1 = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
        
        var email = document.getElementById("emailid");
     	
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        
         var carregdnumber = document.getElementById("carregdnumber").value;
         
         var carkms=document.getElementById("carkms").value;
         
         var carmake=document.getElementById("carmake").value;
         
         var carmodel=document.getElementById("carmodel").value;
         
         var mftyearofregd=document.getElementById("mftyearofregd").value;
         
         var dateofregistration=document.getElementById("dateofregistration").value; 
         
         var enginenumber=document.getElementById("enginenumber").value;
         
         var chassisnumber=document.getElementById("chassisnumber").value;
         
         var typeoffuel=document.getElementById("typeoffuel").value;
         
         var carcolor=document.getElementById("carcolor").value;
         
         var insurancecompanyname=document.getElementById("insurancecompanyname").value;
         var policynumber=document.getElementById("policynumber").value;
         var covernotenumber=document.getElementById("covernotenumber").value;
         var carcolor1=document.getElementById("carcolor1").value; 
         var periodofinsurance=document.getElementById("periodofinsurance").value;
         var periodofpollution=document.getElementById("periodofpollution").value;
         
         if(ownerid==null || ownerid=="")
  		{
  		alert("Owner-ID can't be empty");
  		return false;
  		}else 
        if(name==null || name=="")
 		{
 		alert("Owner-name can't be empty");
 		name.focus;
 		return false;
 		}else if (mobilenumber == null || mobilenumber == "") {
 			alert("MobileNumber can't be empty");
 			return false;
 			}
        else  if (!filter1.test(mobilenumber)) { 
     	    alert("Please provide a valid Mobilenumber");
     	   mobilenumber.focus;
     	    return false;
     	    }
        
     	else if (!filter.test(email.value)) {
     		    alert("Please provide a valid email address");
     		    email.focus;
     		    return false;
     		 }
        else if (carregdnumber== null||carregdnumber=="") {
			alert("Car Registration Number Is Mandatary");
			return false;
		}
        else if (carkms==null||carkms=="") {
			alert("Car kilometers Is Mandatary");
			return false;
		}
        else if(carmake==null||carmake==""){
        	alert("Making Of Car Details Is Mandatary");
        	return false;
        }
        else if(carmodel==null||carmodel==""){
        	alert("Car Model Is Mandatary");
        	return false;
        }
        else if (mftyearofregd==null||mftyearofregd=="") {
			alert("Car Manufacturing Year Is Mandatary");
			return false;
		}
     	  else if (dateofregistration==null||dateofregistration=="") {
			alert("Car Registration Date Is Mandatary");
			return false;
		}
     	 else if (enginenumber==null||enginenumber=="") {
 			alert("Car Engine Number Is Mandatary");
 			return false;
 		}
     	else if (chassisnumber==null||chassisnumber=="") {
 			alert("Car Chassis Number Is Mandatary");
 			return false;
 		}
     	else if (typeoffuel==null||typeoffuel=="") {
 			alert("Car Type Of Fuel Is Mandatary");
 			return false;
 		}
     	else if (carcolor==null||carcolor=="") {
 			alert("Car Color Number Is Mandatary");
 			return false;
 		}
     	else if (insurancecompanyname==null||insurancecompanyname=="") {
 			alert("Car Insurance Company Name Is Mandatary");
 			return false;
 		}
     	else if (policynumber==null||policynumber=="") {
 			alert("Car Policy Number Is Mandatary");
 			return false;
 		}
     	else if (covernotenumber==null||covernotenumber=="") {
 			alert("Car Cover Note Number Is Mandatary");
 			return false;
 		}
     	else if (carcolor1==null||carcolor1=="") {
 			alert("Car Color Is Mandatary");
 			return false;
 		}
     	else if (periodofinsurance==null||periodofinsurance=="") {
			alert("Please provide Period Of Insurance");
			return false;
		}
         else if (periodofpollution==null||periodofpollution=="") {
			alert("Please provide Period Of Pollution");
			return false;
		}
         else return true;
        
     }
     






     function isNumber(evt) {
         var iKeyCode = (evt.which) ? evt.which : evt.keyCode;
         if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
        	 {
             return false;
        	 }
             else{
         return true;
     }}
     


         function lettersOnly(evt) {
        	    evt = (evt) ? evt : event;
        	    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
        	        (evt.which) ? evt.which : 0);
        	    if ((charCode > 31) && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122))
        	    {
        	        return false;
        	    }
        	    else{ 
        	        return true;
        	}}
        	    
         function isAlphaNumeric(str) {
        	  var code, i, len;

        	  for (i = 0, len = str.length; i < len; i++) {
        	    code = str.charCodeAt(i);
        	    if (!(code > 47 && code < 58) && // numeric (0-9)
        	        !(code > 64 && code < 91) && // upper alpha (A-Z)
        	        !(code > 96 && code < 123)) { // lower alpha (a-z)
        	      return false;
        	    }
        	  }
        	  return true;
        	};