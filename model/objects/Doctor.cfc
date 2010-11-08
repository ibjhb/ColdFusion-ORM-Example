/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	7/9/2010 6:45:32 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/


component	persistent		= true
			accessors		= true
			entityname		= 'Doctor'
			extends			= 'scribble.model.objects.Contact' 
			joincolumn		= "ContactID"
			{

	property name='LicenseNumber'	ormtype='string' length='255';	
}

