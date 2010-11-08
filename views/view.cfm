

<cfoutput>
	<cfloop array='#rc.contact#' index='contact'>
		#contact.getFirstName()# #contact.getLastName()# - #contact.getContactID()#<br />
	</cfloop>
</cfoutput>