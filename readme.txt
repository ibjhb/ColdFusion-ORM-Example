To setup to run the examples: 

-Setup ColdBox with a mapping ("/coldbox") to the ColdBox source (I'm using Version 3115)
-Unzip the source files to a empty directory
-Setup a new site (I'm using "http://office.scribble/" in the examples)
-In ColdFusion Admin
--Setup a mapping "scribble" that points at the directory
--Create a datasource pointing at a new database
-Update Application.cfc with the new datasource (line 24)
-Call the application from the browser

At this point, you should see the ColdBox version number and a list of actions. You'll want to run the "Reload" link first so the tables are all created. I'm not sure why, but if you receive an error on the "Reload" page, refresh the browser a couple times and I'll complete properly. 

If you have problems setting up ColdBox, please refer to the ColdBox Documentation at http://wiki.coldbox.org/ 

Most of the code you'll be utilizing is in either /handlers/dev/ or /model/objects/ 

Also, I added a deleteContact example that wasn't covered in the presentation. It should be pretty self explanatory. 

Lastly, this code is a basis to build on and should not be used in a production environment. 
