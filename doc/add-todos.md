# Add ToDo's

Ok, now that we have the basis, let's add our own code on top of it. Since you'll need a Model, Views and a Controller to make it work Rails offers a convenient command called "resource", this will take care of all of it. To get this for our first model, which we call "Todo" we can run the following:

```shell
rails generate resource Todo
```
<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>

Again a few things happened. Rails created the needed files in the right location for us and wired it all up.

If you take a look at the files that got created, it doesn't look like it does much, but it already allows you to create, save, find and edit your Todo's, but they won't contain much.

Let's change that by adding the attributes we need. Since models are connected to the database and we want to save a few things about our todo there, we'll create the attributes there. When Rails works on a model, it takes a look at the database and creates the fields (attributes) based on what it sees in the database.
For example, we will add a field to our todos in the database called "description", this will result in the model "Todo" to have an attribute named exactly the same, you won't need to define it in the `app/models/todo.rb` file. Nice, right?
