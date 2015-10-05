class Person
  attr_accessor :name

  def say_hello_to(person)
    puts "Hello #{person.name}"
  end
end

first_person = Person.new
first_person.name = 'Diego'

second_person = Person.new
second_person.name = 'Alice'

first_person.say_hello_to(second_person)
