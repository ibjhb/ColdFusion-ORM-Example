

component autowire=true cache=false {
	
	void function index(event) output=true{
		var rc = event.getCollection();
		
		var myc = EntityLoad("Contact", {firstname = 'Jim%'}, 'LastName asc', {maxResults=100});
		writeDump(myc);abort;
	}
	
	
	void function byexample(event) output=true{
		var rc = event.getCollection();
		
		var _Contact = getModel('Contact');
		_Contact.setFirstName("James");
		
		Contacts = EntityLoadByExample(_Contact);
		writeDump(Contacts);abort;
	}
	
	
	
	void function query(event) output=true{
		var rc = event.getCollection();
		
		var myID = 1;
		Contacts = ormExecuteQuery("from Contact where ContactID = ?", [myID]);
		writeDump(Contacts);abort;
	}
	
	
	
	void function view(event) output=true{
		var rc = event.getCollection();
		
		var rc.Contact = EntityLoad("Contact");
		
		event.setView("view");
	}
}