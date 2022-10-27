/**
 * Validation
 */
function printError(elemId, hintMsg) {
	document.getElementById(elemId).innerHTML = hintMsg;
}
function validateId(Id) {
	var IdErr = false;
	Id = Id.value;
	var regex = /^[0-9]+$/;
	if (!regex.test(Id)) {
		printError("IdErr", "Please enter only  number");
	} else {
		printError("IdErr", "");
		IdErr = true;
	}

	return IdErr;
}
function validateName(name) {
	var nameErr = false;
	var regex = /[a-zA-Z\s]+$/;
	if (regex.test(name)) {
		printError("nameErr", "Please enter a only Alphabets");
	}
	else if (repeatingCharacters(name)) {
		printError("nameErr", "Please don't enter continous character");
	} else {
		printError("nameErr", "");
		nameErr = true;
	}
	return nameErr;
}
function validateAddress(address) {
	var addressErr = false;
	alert(address);
	var regex = /^[a-zA-Z0-9\s.-]+$/;
	if (regex.test(address)) {
		printError("addressErr", "Please enter a only Alphabets and numbers");
	} else {
		printError("addressErr", "");
		addressErr = true;
	}

	return addressErr;
}
function validatePhonenumber(phonenumber) {
	var phonenumberErr = false;
	var regex = /[6-9]\d{9}$/;
	if (!regex.test(phonenumber)) {
		printError("phonenumberErr", "Please enter a valid 10 digit Phone number and start with[6-9]");
	} else {
		printError("phonenumberErr", "");
		phonenumberErr = true;
	}
	return phonenumberErr;
}
function validateEmail(email) {
	var emailErr = false;
	var regex = /^\S+@\S+\.\S+$/;
	var start = email.indexOf('@');
	var end = email.lastIndexOf('.');
	var subemail = email.substring(start + 1, end);
	if (regex.test(email)) {
		printError("emailErr", "Please enter a valid email address");
	}
	else if (repeatingCharacters(subemail)) {
		printError("emailErr", "Please don't enter continous character in domain");
	} else {
		printError("emailErr", "");
		emailErr = true;
	}

	return emailErr;
}
function validateAadharnumber(aadharnumber) {
	var aadharnumberErr = true;
	var regex = /[0-9]{12}/;
	if (regex.test(aadharnumber)) {
		printError("aadharnumberErr", "Please enter 12 digit Aadhar number and start with[6-9]");
	} else {
		printError("aadharnumberErr", "");
		aadharnumberErr = false;
	}
	return aadharnumberErr;
}
function validatePassword(password) {
	var passwordErr = false;
	var result = "";
	var onedigit = /[0-9]/;
	var oneAlpha = /[a-z]/;
	var oneCapAlpha = /[A-Z]/;
	var special = /[^a-zA-Z0-9]+/;
	if (onedigit.test(password))
		result = result + "Enter Atleast One Digit \n";
	if (oneAlpha.test(password))
		result = result + "Enter Atleast One Small \n";
	if (oneCapAlpha.test(password))
		result = result + "Enter Atleast One Capital \n";
	if (special.test(password))
		result = result + "Enter Atleast One special \n";
	if (password.length < 8)
		result = result + "Minimun 8 characters "
	if (result !== "") {
		printError("passwordErr", result);
	} else {
		printError("passwordErr", "");
		passwordErr = true;
	}

	return passwordErr;
}

function repeatingCharacters(validate) {
	var repetitioncount = 0;
	for (var index = 0; index < validate.length; index++) {
		if (validate[index] == validate[index + 1]) {
			repetitioncount++;
			if (repetitioncount >= 2) {
				return true;
			}
		}
		else
			repetitioncount = 0;
	}
	return false;

}

