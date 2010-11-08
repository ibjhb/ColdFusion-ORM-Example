/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	8/1/2010 11:44:19 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/

component	persistent		= true
			accessors		= true
			entityname		= 'Mansion'
			extends			= 'scribble.model.objects.baseobject' {

	// persistent --------------------------------------------------------------------
	property name='MansionID'		ormtype='integer' fieldtype='id' generator='increment';
	property name='SquareFeet'		ormtype='integer';
	property name='Bedrooms'		ormtype='integer';
	property name='Bathrooms'		ormtype='integer';
	property name='Garages'			ormtype='integer';
	property name='Description'		ormtype='string' 	length='1000';
	property name='Deleted'			ormtype='boolean' 	default=false;
	
	
	/** Relationship to the Contact object
	// Sharing PK 
	property name			= 'Contact'
		fieldtype			= 'one-to-one'
		cfc					= 'Contact'
		type				= 'array'
		constrained			= 'true'
		;
	*/
	
	property 
		name				= 'Contact'
		fieldtype			= 'one-to-one'
		cfc					= 'Contact'
		ormtype				= 'int' 
		fkcolumn			= 'ContactID'
		;	
}
