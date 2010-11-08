

component autowire=true cache=false {

	function index(event){
		var rc = event.getCollection();
		
		var newC = entityNew("Doctor");
		newC.setFirstName('James1');
		newC.setLastName("Brown");
		newC.setInitials("JHB");
		
		/* specific to this */
		newC.setLicenseNumber("ABC");
		
		
		var loc = entityNew("Address");
		loc.setAddressLine1("123 3th Ave N");
		loc.save();
		newC.setAddress([loc]);		
		
		var phone = entityNew("PhoneNumber");
		phone.setAreaCode(727);
		phone.setPrefix(555);
		phone.setSuffix(1212);
		phone.save();
		newC.setPhoneNumber([phone]);
		
		var email = entityNew("EmailAddress");
		email.setEmailAddress('james@gulftobaytech.com');
		email.save();
		newC.setEmailAddress([email]);
		
		newC.save();
		writeDump(newC);
		abort;
		
	}
}