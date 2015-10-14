# Intro to Ruby

__**Note:** Before you start, please, read the [README](../README.md)!__

Ruby is a language that can be used for several types of programming tasks; today we will look at Ruby On Rails, a framework designed specifically for web development. Here is an example of what Ruby looks like:

```ruby
class Person
  attr_accessor :name

  def say_hello_to(person)
    puts "Hello #{person.name}"
  end
end

first_person = Person.new
first_person.name = "Diego"

second_person = Person.new
second_person.name = "Alice"

first_person.say_hello_to(second_person)
```

The `class` lets you describe an object (in this case, our object is "Person") and we gave it an attribute with `attr_accessor`. It also has a method defined `say_hello_to`, which takes another "Person"-Object and uses its name.

You can run this with the following command (<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>):

```shell
ruby examples/persons_talk.rb
```

When it is done you should see "Hello Alice" in your terminal.
