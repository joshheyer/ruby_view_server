require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

name = "Bilbo Baggins"
t2 = ERB.new("<p>Hello, Mr. <%= name %></p>")
puts t2.result(binding)

pets = ['dogs', 'cats', 'hamsters', 'fish']
pets_erb = '<ul><% pets.each do |pet| %>'
pets_erb += '<li>I love <%= pet %>!<li>'
pets_erb += '<% end %></ul>'
t3 = ERB.new(pets_erb)
puts t3.result(binding)

person = {name: "bob", occupation: 'dentist', age: 34}
person_erb = '<dl><% person.each do |attribute, value| %>'
person_erb += '<dt><%= attribute %></dt>'
person_erb += '<dd><%= value %></dd>'
person_erb += '<% end %></dl>'
t4 = ERB.new(person_erb)
puts t4.result(binding)
