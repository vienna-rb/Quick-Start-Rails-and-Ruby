# Add ToDo's

Ok, now that we have the basis, let's add our own code on top of it. Since you'll need a Model, Views and a Controller to make it work, Rails offers a convenient command called "resource" that will take care of all of it. To get this for our first model, which we will call "Todo", we run the following (<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>):

```shell
rails generate resource Todo
```

Again a few things happened: Rails created the needed files for us, in the right location.

If you take a look at the files that were created it doesn't look like much – but it already allows you to create, save, find and edit your Todo's.

What we want to create is a to-do application in which each to-do is a description. These descriptions will be saved to our database. Rails creates the fields (attributes) based on what it sees in our database, so you won't need to define it in the `app/models/todo.rb` file. Nice, right?

💾 [Add Todo resource](https://github.com/bastilian/todo-application/commit/3aeb43dc2ea08fe1dade47cd6786bf799eb416bf)
