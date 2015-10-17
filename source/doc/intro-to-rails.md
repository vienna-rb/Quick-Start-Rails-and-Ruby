# Intro to Rails

The Rails framework is the basis for our web application. Without any special configuration, you can start building your application and put it online for others to use.

There are three "components" to the framework, "Model", "View" and "Controller". We'll dig deeper into these later, but in short, here's what they are and what they do:

1. **Models** are objects that are connected to a database. Every time you call the method `save` on one of them, it will put that object into your database. That way, you will have it again the next time you start your application.
1. **Views** make your application visible in the browser; you can think of them as "Templates".
1. **Controllers** are what make it all work together. It grabs your models from the database and it renders the views with the data it got.
