function adminValidate() {

	var adminid = document.form.AdminId.value;
	var adminpassword = document.form.AdminPassword.value;

	if (adminid == null || adminid == "") {
		alert("please Enter the AdminId");
		adminid.focus;
		return false;
	} else if (adminpassword == null || adminpassword == "") {

		alert("please Enter the Password");
		return false;
	}

	else

		return true;
}
function employeeValidate() {

	var adminid = document.form.empid.value;
	var adminpassword = document.form.emppassword.value;

	if (adminid == null || adminid == "") {
		alert("please Enter the LoginId");
		adminid.focus;
		return false;
	} else if (adminpassword == null || adminpassword == "") {

		alert("please Enter the Password");
		return false;
	}

	else

		return true;
}

function validation() {
	if ((form.designation[0].checked == false)
			&& (form.designation[1].checked == false)) {
		alert("Please choose your designation: BillingDepartment or AccountManager");

		return false;
	}
}

function alphaNumeric(inputtext) {
	var letterNumber = / ^[0-9a-zA-Z]+$/;
	if (inputtext.value.match(letterNumber)) {
		return true;
	} else {
		alert("plz enter the valid number");
		return false;
	}
}
function isNumber(evt) {//Number validation 
	var iKeyCode = (evt.which) ? evt.which : evt.keyCode;
	if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
		return false;//return type

	return true;
}
