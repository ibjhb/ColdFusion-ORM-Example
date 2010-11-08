/*-------------------------------------------------------------------------
Author			: 	James Brown - http://www.coldfusioning.com
Date Created	: 	8/1/2010 11:44:19 PM
Modified		: 	
Description		: 	See objct hint.
 --------------------------------------------------------------------------*/

/**
The BaseObject may be extended or included by reference as a utility
to other objects in the Application.
*/
component name='BaseObject' cache=false accessors=true {

	/** Constructor. */
	public void function init() {
		return;
	}

	// Public Methods--------------------------------------------------------------------
	public function save() {
		entitySave(this);
	}
}