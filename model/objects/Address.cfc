/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	8/1/2010 11:44:19 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/

component	persistent		= true
			accessors		= true
			entityname		= 'Address'
			extends			= 'scribble.model.objects.baseobject' {

	property name='AddressID'		ormtype='integer' fieldtype='id' generator='increment';
	property name='AddressLine1'	ormtype='string' length='255';
	property name='AddressLine2'	ormtype='string' length='255';
	property name='AddressLine3'	ormtype='string' length='255';
	property name='City'			ormtype='string' length='255';
	property name='State'			ormtype='string' length='255';
	property name='ZipCode'			ormtype='string' length='10';
	property name='Country'			ormtype='string' length='2';
	property name='Deleted'			ormtype='boolean' default=false ;
	
	
}
