## Style the view


Since we are focusing on Ruby and Rails here, we are going to use a CSS-Framework (SemanticUI) to provide us with some basic styling. Add the following to your `Gemfile`:

```
gem 'semantic-ui-sass', github: 'doabit/semantic-ui-sass'
```

To include the stylesheets and javascripts that make SemanticUI work in our app, we need to `require` them.

Add this to `app/assets/stylesheets/application.css` in to the comment-block at the top before the `*/`:

```
*= require semantic-ui
```

And add the javascript to `app/assets/javascripts/application.js`:

```
//= require semantic-ui
```

Also in the first comment-block, best before `require_tree .`.

To finish up our styling here is a snippet to add to `application.css`:

```
body { padding: 2em 35%; }
.input { width: 100%; }
ul { margin: 2em 0; padding: 0;}
li { list-style: none; }
```

This will make our Todo-list look good once we add more to our template.

💾 [Add SemanticUI](https://github.com/bastilian/todo-application/commit/b5867646342b9ecfe2abc8f5dae77df48df8ca38)
