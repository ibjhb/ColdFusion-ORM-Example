/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	8/1/2010 11:44:19 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/

component	persistent		= true
			accessors		= true
			entityname		= 'EmailAddress'
			extends			= 'scribble.model.objects.baseobject' {

	property name='EmailAddressID'	ormtype='integer' fieldtype='id' generator='increment';
	property name='EmailAddress'	ormtype='string' length='1000';
	property name='Deleted'			ormtype='boolean' default=false;
	
}
