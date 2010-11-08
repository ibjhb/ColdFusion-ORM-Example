

component autowire=true cache=false {
	
	void function index(event) output=true{
		var myC = entityLoad("Contact", 1, true);
		
		
		if(isDefined("myC")){
			myC.setFirstName("Jim");
			myC.save();
			writeOutput("Record Updated");
		} else {
			writeOutput("ContactID 1 does not exist.  Please change line 6 in the source code to a valid ContactID");
		}
		
		abort;
	}
	
	void function get(event) output=true{
		var myC = entityLoad("Contact", 1, true);
		
		writedump(myC);
		abort;	
	}
}