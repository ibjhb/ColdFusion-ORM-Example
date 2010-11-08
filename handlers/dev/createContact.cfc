

component autowire=true cache=false {

	function index(event){
		var rc = event.getCollection();
		
		var newContact = entityNew("Contact");
		newContact.setFirstName('James');
		newContact.setLastName("Brown");
		newContact.setInitials("JHB");
		newContact.setPreviousID(CreateUUID());
		
		var loc = entityNew("Address");
		loc.setAddressLine1("200 2nd Ave S");
		loc.setAddressLine2("Suite 333");
		loc.setCity("St. Petersburg");
		loc.setState("FL");
		loc.setZipCode("33701");
		entitySave(loc);
		newContact.setAddress([loc]);		
		
		var phone = entityNew("PhoneNumber");
		phone.setAreaCode(727);
		phone.setPrefix(433);
		phone.setSuffix(7300);
		phone.save();
		
		var otherphone = entityNew("PhoneNumber");
		otherphone.setAreaCode(727);
		otherphone.setPrefix(386);
		otherphone.setSuffix(3824);
		otherphone.save();
		
		newContact.setPhoneNumber([phone, otherphone]);
				
		var email = entityNew("EmailAddress");
		email.setEmailAddress('james@gulftobaytech.com');
		email.save();
		newContact.setEmailAddress([email]);
		
		newContact.save();
		writeDump(newContact);
		abort;
		
	}
}