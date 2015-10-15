## Create and update Todos

Of course we also want to add some todos and and mark them as done when needed.
In Rails this can be done by adding a `create` and an `update` method to our `TodosController`.

In the create action, we want the `Todo` model to save a new todo to our database. Our action should look like this then:

```ruby
def create
  @todo = Todo.new(todo_params)

  if @todo.save
    redirect_to action: :index
  end
end
```

We are creating a new Todo and assigning it to the `@todo` variable. Then we try to `save` this new todo and if this returns `true`, it will redirect us to our index action.

You may notice the `todo_params` when we make a new Todo object, so let's look at that. We have not added this yet, but we will in a minute. The method we are going to add to our controller is not an action that you can access through the browser, it is a method that will look at what parameters our browser sent, this also will contain our todo-data. In the method, we will mark parameters that are "allowed".

Put the following method at the end of the `TodosController`, before the last `end`:

```ruby
def todo_params
  params.require(:todo).permit(:description)
end
```

Before we jump to adding the todo list "interface", let's add the `update` method real quick to the `TodosController`. It is very similar to the `create` action, but first looks for a `Todo` in the database and updates the attributes instead of creating a new one:

```ruby
def update
  @todo = Todo.find(params[:id])

  if @todo
    @todo.update_attributes(todo_params)
  end

  render nothing: true, status: 200
end
```

Also, instead of redirecting we `render` nothing and just return **200** as the `status` to say everything went well. We do this because we will add some fancy JavaScript to make the change in the background.

💾 [Add create and update method in TodosController](https://github.com/bastilian/todo-application/commit/ffe88069fc6192d9d390e869535e1f7621e0f29d)
