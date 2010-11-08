/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	6/20/2010 11:53:28 PM
Modified		:
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/

component	persistent		= true
			accessors		= true
			entityname		= 'Contact'
			hint			= 'This object holds contacts and their associated properties'   // This is not required but included for reference.
			extends			= 'scribble.model.objects.baseobject'
			type			= 'Contact'
			{

	
	// persistent --------------------------------------------------------------------
	property name='ContactID' 			ormtype='integer' fieldtype='id' generator='increment';
	property name='TypeID'			 	ormtype='integer';
	property name='Title' 				ormtype='string'	length='25';
	property name='FirstName' 			ormtype='string' 	length='255';
	property name='MiddleName' 			ormtype='string' 	length='50';
	property name='LastName'			ormtype='string' 	length='255';
	property name='Suffix' 				ormtype='string' 	length='25';
	property name='SSN'					ormtype='string' 	length='11';
	property name='DOB' 				ormtype='date' 		type='date';
	property name='DOD' 				ormtype='date'		type='date';
	property name='DL' 					ormtype='string' 	length='35';
	property name='Deleted'				ormtype='boolean'	default=false;
	property name='Username'			ormtype='string' 	length='255';
	property name='Password' 			ormtype='string' 	length='4000';
	property name='LoginActive' 		ormtype='boolean';
	property name='AcceptEULA' 			ormtype='boolean';
	property name='Initials' 			ormtype='string'	 length='10';
	property name='PrintedName' 		ormtype='string' 	length='255';
	property name='PreviousID' 			ormtype='string' 	length='255';
	
	
	// relationships --------------------------------------------------------------------
	
	/* 
	// Sharing PK 
	property name			= 'Mansion'
		fieldtype			= 'one-to-one'
		cfc					= 'Mansion'
		type				= 'array'
		;
	*/
	
	property name			= 'Mansion'
		fieldtype			= 'one-to-one'
		cfc					= 'Mansion'
		mappedby			= 'Contact'
		ormtype				= 'integer' 
		;
		
	/** Relationship to the Address object */
	property name			= 'Address'
		fieldtype			= 'many-to-many'
		cfc					= 'Address'
		fkcolumn			= 'ContactID'
		inversejoincolumn	= 'AddressID'
		type				= 'array'
		linktable			= 'Contact_To_Address'
		orderby				= 'AddressID ASC';
	
	
	/** Relationship to the PhoneNumber object */
	property name			= 'PhoneNumber'
		fieldtype			= 'many-to-many'
		cfc					= 'PhoneNumber'
		fkcolumn			= 'ContactID'
		inversejoincolumn	= 'PhoneNumberID'
		type				= 'array'
		linktable			= 'Contact_To_PhoneNumber'
		orderby				= 'PhoneNumberID ASC';
		
	/** Relationship to the EmailAddress object */
	property name			= 'EmailAddress'
		fieldtype			= 'many-to-many'
		cfc					= 'EmailAddress'
		fkcolumn			= 'ContactID'
		inversejoincolumn	= 'EmailAddressID'
		type				= 'array'
		linktable			= 'Contact_To_EmailAddress'
		orderby				= 'EmailAddressID ASC';

}
