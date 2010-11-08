/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	8/1/2010 11:44:19 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/

component	persistent		= true
			accessors		= true
			entityname		= 'PhoneNumber'  						// Optional but will use cfc name is omitted 
			extends			= 'scribble.model.objects.baseobject' 
			
	{
	property name='PhoneNumberID'	ormtype='integer' fieldtype='id' generator='increment';
	property name='CountryCode'		ormtype='string' length='10';
	property name='AreaCode'		ormtype='string' length='3';
	property name='Prefix'			ormtype='string' length='3';
	property name='Suffix'			ormtype='string' length='4';
	property name='Extention'		ormtype='string' length='100';
	property name='Deleted'			ormtype='boolean' default=false;
}
