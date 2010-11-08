

component autowire=true cache=false {
	
	void function index(event) output=true{
		var myC = entityLoad("Contact", 1, true);
		
		if(isDefined("myC")){
			entityDelete(myC);
			writeOutput("Record Deleted - All join records are also deleted");
		} else {
			writeOutput("Record Already Deleted");
		}
				
		abort;
	}
}