## Add the Form and checkboxes

To add the form to create new todos and to check them off we are gonna modify our `index.html.erb` template a bit.

Change the first line, the one with `<%= @todos.size %>` to the following:

```html
<h1>Todos: <span id="todo-count"><%= @todos.size %></span></h1>

<form id="todo-form" action="/todos" method="post">

  <input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">

  <div class="ui action input">
    <input name="todo[description]" type="text" placeholder="What to do?" />
    <button class="ui button submit">Add</button>
  </div>

</form>
```

This adds the form to submit new todos.

The form makes a `POST` request to `/todos` in our application. Rails uses HTTP-methods to route request from users as well. You can see what routes with what HTTP-method goes to which Controller and action with:

```shell
rake routes
```
<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>

The form also includes a hidden input named **authenticity_token** this will add a token to the data the form sends to verify that it comes from our application.

When you saved the template got to your browser and refresh `http://DOCKER_IP:3000/todos` and you should see the form and you can already submit your todos!

We will now change the list of todos a little bit using `semantic-ui`-css classes and make it all work by adding a bit of JavaScript.

In the template change the `<ul>` and everything in it to this:

```html
<ul id="todo-list">

  <% @todos.each do | todo | %>
    <li>

      <div class="ui checkbox">
        <input type="checkbox" data-id="<%= todo.id %>"<%= todo.done ? ' checked="checked"' : '' %>>
        <label><%= todo.description %></label>
      </div>

    </li>
  <% end %>

</ul>
```
The todos now also have a checkbox and are marked with CSS classes to make it look nice.

The checkbox uses the "done" attribute of the Todo to know if it is checked or not. We will create that in the next step. Before that we will add some JavaScript to `application.js` that will make and update to our todos by making a request in the background:

```javascript
$(document).ready(function () {

  $('#todo-list input[type="checkbox"]').on('click', function (event) {
    $.ajax({
      url: '/todos/' + $(event.target).data('id'),
      method: 'put',
      data: {
        todo:{
          done: event.target.checked
        }
      }
    });
  });

});
```

Make sure you add this **after** the first comment-block. The request also uses the "done" attribute. We should implement that now and allow it.


💾 [Add Form and Checkboxes for Todos](https://github.com/bastilian/todo-application/commit/ffe88069fc6192d9d390e869535e1f7621e0f29d)
