# Intro to Ruby

__**Note:** Before you start, please, read the [README](README.md)!__

Ruby is the programming language the Rails is written in. It is a very expressive and object oriented programming languages. You should be able to get started with it very easily and you'll learn more about it when building our ToDo-Application. The basic and most important rule you have to remember is, that "Everything is an object". Everything has attributes and methods. Here is an example what Ruby looks like:

```ruby
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

```shell
ruby example/persons_talk.rb
```
<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>
When it is done you should see "Hello Alice" in your terminal.
