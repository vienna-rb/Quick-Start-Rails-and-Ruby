# Add attributes to Todo's

When you add or remove something from the database you can do this with a "migration". Migrations are Ruby code where you can describe what you'd like to have changed. To give you a head start you can generate a migration with the following command (<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>):

```shell
rails generate migration add_todo_fields
```

If you take a look now at your editor and open the `db` folder you'll see that there is a new file which includes "add_todo_fields" and a timestamp. Now let's edit this file to add some columns (you can think of a database as an Excel sheet). For this we will add the following in the `change`-method:

```ruby
class AddTodoFields < ActiveRecord::Migration
  def change
    add_column :todos, :description, :string
    add_column :todos, :done_at,     :datetime
  end
end
```

So, what does this do? When you run the migration it will run the `change` method and add two fields to the table where we store our todos. We also defined what they are: one is a string and the other is a datetime. This helps Rails to figure out how to process them. 

Run the following command to make the database aware of the changes we made (<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>):

```
rake db:migrate
```


💾 [Add Todo Fields](https://github.com/bastilian/todo-application/commit/cca3ec307c80796080dc574a2bcfd0766bd9e8b1)
