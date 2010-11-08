/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	8/1/2010 11:44:19 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/


component	persistent		= true
			accessors		= true
			entityname		= 'Client'
			extends			= 'scribble.model.objects.Contact' 
			joincolumn		= "ContactID"
			{

	property name='ClientNumber'	ormtype='string' length="255";
	
}
