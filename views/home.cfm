<cfoutput>
ColdBox Version: #getSetting("codename",1)# #getSetting("version",1)# (#getsetting("suffix",1)#
<br /><br />
<strong>Actions:</strong>
<ul>
	<li><a href="#event.buildLink(rc.xeh.reload)#">Reload</a><br />
	(Note: This will drop all the tables and rebuild the database tables)
	<br /><br />
	</li>	
	<li><a href="#event.buildLink(rc.xeh.createContact)#">Create Contact</a></li>
	<li><a href="#event.buildLink(rc.xeh.createDoctor)#">Create Doctor</a></li>
	<li><a href="#event.buildLink(rc.xeh.createMansion)#">Create Mansion</a></li>	
	<li><a href="#event.buildLink(rc.xeh.searchcontact.index)#">Search Contact</a></li>
	<li><a href="#event.buildLink(rc.xeh.searchcontact.byexample)#">Search Contact By Example</a></li>
	<li><a href="#event.buildLink(rc.xeh.searchcontact.query)#">Search Contact By Query</a></li>
	<li><a href="#event.buildLink(rc.xeh.searchcontact.view)#">Load All With View</a></li>
	<li><a href="#event.buildLink(rc.xeh.updatecontact.index)#">Update Contact</a></li>
	<li><a href="#event.buildLink(rc.xeh.updatecontact.get)#">Get Contact After Update</a></li>
	<li><a href="#event.buildLink(rc.xeh.deleteContact)#">Delete Contact</a></li>
</ul>
</cfoutput>