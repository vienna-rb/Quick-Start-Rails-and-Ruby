# Add attributes to Todo's

When you add or remove something from the database you can do this with a "migration". Migrations are Ruby code where you can describe what you'd like to have changed. To give you a head start you can generate a migration with the following command:

```shell
rails generate migration add_todo_fields
```
<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>

If you take a look now at your editor and open the `db` folder you'll see that there is a new file, which includes "add_todo_fields" and a timestamp prefixed. Now let's edit this file to add some columns. For this we will add the following in the `change`-method. What you see in the end should look like the following:

```ruby
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
rake db:migrate
```
<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>

Let's take a look what our application looks like in the browser. Start up the server with `rails server`.
If it started correctly you should see an empty list of todos and a link to a form to enter new ones
