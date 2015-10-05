# Intro to Ruby

Ruby is the programming language the Rails is written in. It is a very expressive and object oriented programming languages. You should be able to get started with it very easily and you'll learn more about it when building our ToDo-Application. The basic and most important rule you have to remember is, that "Everything is an object". Everything has attributes and methods. Here is an example what Ruby looks like:

```
class Person
  attr_accessor :name

  def say_hello_to(person)
    puts "Hello #{person.name}"
  end
end

first_person = Person.new
first_parson.name = "Diego"

second_person = Person.new
second_person.name = "Alice"

first_person.say_hello_to(second_person)
```

The `class` let's you describe an object, in this case "Person" and we gave it an attribute with `attr_accessor`. It also has a method defined `say_hello_to`, which takes another "Person"-Object and uses it's name.

You can run this with the following command:

```
$ ruby example/persons_talk.rb
```

When it is done you should see "Hello Alice" in your terminal.

# Intro to Rails

Rails is a framework, the basis to build a web application. Without any doing you can special configuration you can start building and put your application online for others to use. This is because it has conventions that you can follow from the start, or not if you want to do something differently.

There are three "components" to the framework, "Model", "View" and "Controller". You'll see how these look like and what they are later on, but here in short what they are and do:

1. Model
  Models are objects that are connected to a database. Every time you say call the method `save` on one of them, it will put it into your database. That way you have it again when you start your application next.
1. Views
  To present your application in the browser, or actually anything that accesses your application, you use "Views". "Templates" would describe it better.
1. Controller
  The controller is what makes it all work together. It grabs your models from the database and renders the views with the data it got.

# Let's get started

In your terminal type the following:

```
$ rails new todo-application
```

You'll see a number of things happing. All of it is creating the basic structure of the application, makes sure that everything is there and installs what is missing. The `cd todo-application` command will bring you into the application folder. Open the folder with your editor and take a look what is in there. The part you will mostly work in is `app`.

# Add ToDo's

Ok, now that we have the basis, let's add our own code on top of it. Since you'll need a Model, Views and a Controller to make it work Rails offers a convenient command called "resource", this will take care of all of it. To get this for our first model, which we call "Todo" we can run the following:

```
$ rails generate resource Todo
```

Again a few things happened. Rails created the needed files in the right location for us and wired it all up.

If you take a look at the files that got created, it doesn't look like it does much, but it already allows you to create, save, find and edit your Todo's, but they won't contain much.

Let's change that by adding the attributes we need. Since models are connected to the database and we want to save a few things about our todo there, we'll create the attributes there. When Rails works on a model, it takes a look at the database and creates the fields (attributes) based on what it sees in the database.
For example, we will add a field to our todos in the database called "description", this will result in the model "Todo" to have an attribute named exactly the same, you won't need to define it in the `app/models/todo.rb` file. Nice, right?

When you add or remove something from the database you can do this with a "migration". Migrations are Ruby code where you can describe what you'd like to have changed. To give you a head start you can generate a migration with the following command:

```
$ rails generate migration add_todo_fields
```

If you take a look now at your editor and open the `db` folder you'll see that there is a new file, which includes "add_todo_fields" and a timestamp prefixed. Now let's edit this file to add some columns. For this we will add the following in the `change`-method. What you see in the end should look like the following:

```
class AddTodoFields < ActiveRecord::Migration
  def change
    add_column :todos, :description, :string
    add_column :todos, :done_at,     :datetime
  end
end
```

So, what does this do? when you run the migration it will run the `change` method and add two fields to the table where we store our todos. We also defined what they are the one is a string and the other is a datetime, this helps rails to know how to handle them. You'll see the magic later on.
To make it all happen run:

```
$ rake db:migrate
```

Let's take a look what our application looks like in the browser. Start up the server with `rails server`.
If it started correctly you should see an empty list of todos and a link to a form to enter new ones
