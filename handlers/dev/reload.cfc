

component autowire=true cache=false {
	
	void function index(event) output=true{
		ormReload();
		
		var entities = [
			 'Address'
			,'Client'
			,'Contact'
			,'Doctor'
			,'EmailAddress'
			,'Mansion'
			,'PhoneNumber'			
		];

		// Create all entities to update the database for changes
		var i = 0;
		var n = arrayLen(entities);
		for (i=1; i<=n; i++)
			writeDump( entityNew(entities[i]) );

		abort;
	}
	
	
}