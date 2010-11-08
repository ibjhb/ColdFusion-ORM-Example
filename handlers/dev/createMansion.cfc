component autowire=true cache=false {
	void function index(event) output=true{
		var rc = event.getCollection();
		
		var newContact = entityNew("Contact");
		newContact.setFirstName('James');
		newContact.setLastName("Brown");
		newContact.setInitials("JHB");
		newContact.save();
		
		
		var newMansion = entityNew("Mansion");
		newMansion.setContact(newContact);
		newMansion.setSquareFeet(20000);
		newMansion.setBedrooms(8);
		newMansion.setBathrooms(9);
		newMansion.setGarages(5);
		writeDump(newMansion);
		entitySave(newMansion);
		abort;
	}
}