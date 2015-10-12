## Implement "done" for Todos

We will add a "getter" and a "setter" to our Todo-Model so that our controller can write it and our views can read it.
Both will use the `done_at` field we defined in the beginning. The "done" method, the getter, will just look if the field is empty and tell that:

```
def done
  !done_at.to_s.empty?
end
```

Add this to the Model-class in `app/models/todo.rb`. The setter looks a bit more complex, but is pretty simple:

```
def done=(toggle)
  update(done_at: (toggle == "true" ? DateTime.now : nil))
end
```

It calls `update` with with `done_at` attribute. The value depends on "toggle", which will be coming from the JavaScript we added earlier. If it is "true" (checked) it should set the "done_at" field to the current time. If it is not "true" it will set it to `nil` basically emptying it.

Once you added the setter method to your Model-class as well you just need to add the "done" attribute to the "permitted" attributes in the TodosController. Change `todo_params` to the following:

```
def todo_params
  params.require(:todo).permit(:description, :done)
end
```

While we are here, let's change the order in the index-action, so we have the newest todos first. Here is What the index-action should look like:

```
def index
  @todos = Todo.all.order('created_at DESC')
end
```

We added `.order('created_at DESC')` to the `all`-call.

Save it, reload the page in the browser and tada!
That's the story how Wunderlist started!

💾 [Implement done on Todo and permit in the controller](https://github.com/bastilian/todo-application/commit/18f5ce3ef9a6a57ff76c7fc54abb472ff1515721)
