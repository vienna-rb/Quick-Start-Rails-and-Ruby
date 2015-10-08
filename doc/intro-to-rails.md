# Intro to Rails

Rails is a framework, the basis to build a web application. Without any doing you can special configuration you can start building and put your application online for others to use. This is because it has conventions that you can follow from the start, or not if you want to do something differently.

There are three "components" to the framework, "Model", "View" and "Controller". You'll see how these look like and what they are later on, but here in short what they are and do:

1. **Models** are objects that are connected to a database. Every time you say call the method `save` on one of them, it will put it into your database. That way you have it again when you start your application next.
1. **Views** present your application in the browser, or actually anything that accesses your application, you use "Views". "Templates" would describe it better.
1. **Controllers** are what make it all work together. It grabs your models from the database and renders the views with the data it got.
