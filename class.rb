require "awesome_print"

def shout first_name:, last_name:
  ap first_name + ' ' + last_name
end

class People
  def initialize first_name:, last_name:, age:
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def age
    @age
  end
end

# john = People.new(age: 20, first_name: "John", last_name: "Doe")
# ap john.age
# puts "1".to_f
# shout(first_name: "John", last_name: "Doe")


# YIELD
# def the_order
#   puts "Hello all!"
#   yield
#   puts "Oh okay"
# end

# the_order do
#   puts "Sorry, i'm first :)"
# end

# YIELD with param
# def introduction(name)
#   puts name + ' <<<<<'
#   yield(name)
# end

# # introduction("john") do |str| 
# #   puts str
# # end
