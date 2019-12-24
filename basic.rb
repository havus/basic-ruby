#!/usr/bin/env ruby

# can execute file with 2 ways
# chmod +x basic.rb with unix(shebang)

# Command
=begin
This program will
print "Hello, world!".
=end

# puts 'Hello, world!'

# # Variable
# const = 0
# Const = 2
# CONST = 1
# require 'date'

# @test2 = Date.today

# def set_subscription_status
#   if @test2.class == Date
#     2
#     # true ? 1 : 2
#     # return 0
#   else
#     0
#     # return 1
#   end
# end

# puts set_subscription_status

people = {
  name: 'john',
  age: 21
}

class Person
  def name(*args)
    args.join(' ')
  end

  def call_name
    puts send(:name, 'my name is', 'john')
  end
end

john = Person.new
john.call_name
# puts john.send :name, 'john', 'doe'

# send(people[:name].to_s, ' doe')

# puts people[:address] ||= 'tidak ada'
# ||= adalah operator kalau tidak ada dia akan return dan declare variable tsb
# puts people[:address]

# items.map(&:package_items).flatten
