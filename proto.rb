# shout = "hello"
# puts "#{shout} #{12}"
# puts '#{shout} #{12}'
# print shout # hello without new line
# p shout # "hello" with new line and specified tipe data
# print "Enter what u want! => "
# shout = gets.chomp
# puts "The result => #{shout}"
# print "Enter first number => "
# num1 = gets.chomp.to_i
# print "Enter second number => "
# num2 = gets.chomp.to_i
# puts "The result => #{num1.to_s + num2.to_s}"

# function and condition
# "string".class == "string".chars.class
# false ? (puts 1) : (puts -1) # ternary
# puts true ? ?7 : '' # 7
# puts true ? ?7 * 3 : '' # 777
# puts "string" == "string"
# (true) && (print "benar "; puts "lagi")
# (!true) || (print "salah " ; puts "lagi")
# 5.==(5).&(puts ?5)

# def shout(args)
#   # print the same result with return and without it
#   if args.to_i == 10
#     puts "Ini angka sepuluh"
#   end
#   unless args.to_i == 10
#     puts "Ini bukan angka sepuluh bos"
#   end
# end
# puts shout("10")
# number = 3
# case number
#   when 1 
#     puts "satu"
#   when 2 
#     puts "dua"
#   when 3 
#     puts "tiga"
#   else
#     puts "lain-lain"
# end

# >>>>> array <<<<<
# arr = ["satu", 2, "three"]
# print arr.first + ", #{arr[1]}, " + arr.last + "\n"
# puts '2 number: ' + arr.take(2).to_s
# puts 'arr count: ' + arr.count.to_s
# puts 'arr length: ' + arr.length.to_s
# arr.push("empat")
# arr.unshift(0)
# arr.insert(1, 'nyelip index')
# puts arr
# arr.pop
# arr.shift
# puts '>>>>>>>'
# puts arr

# >>>>> looping <<<<<
# 3.times do
#   puts "3"
# end
# number = 1
# while number <= 5
#   puts number
#   number+=1
# end
# until number > 5
#   puts number
#   number += 1
# end
# for number in (0..3)
#   puts number
# end
# for i in 10.downto(0)
#   puts i
# end
# arr = ["hello", "world", "oke"]
# arr.each do |contain|
#   puts contain
# end
# arr.each {
#   |contain| puts contain
# }
# (0..2).each do |n|
#   puts n
# end

# hash, hashes, hashmap, dictionary
# satu = "satu"
# example = {
#   satu => "pertama",
#   "dua" => "kedua"
# }
# puts example["satu"]
# example.each do |key, value|
#   print key + ' '
#   puts value
# end

# class Person
#   # init
#   def initialize(name)
#     # simbol @ sama dengan deklarasi properti
#     @name = name
#   end
#   def name
#     "My name is #{@name}"
#   end
#   def setName(str)
#     @name = str
#   end
# end

# class Boy < Person
#   def publicGender
#     return getGender
#   end
#   # tingkat akses ada 3: public, private, protected (bisa diakses subclass / anak2nya)
#   # Ada 2 jenis penulisan tingkat akses class
#   # private :getGender
#   private #dibawah setelahnya auto private
#   def getGender
#     return "Male"
#   end
# end

# person = Person.new("john")
# puts person.name
# person.setName("Doe")
# puts person.name
# boy = Boy.new("Simon")
# puts boy.name
# puts "My gender is " + boy.publicGender










# https://www.ruby-forum.com/t/beginner-if-statement-in-one-line/142781/16
# Ruby is a kind of language that has many alternatives to do a job. You could write an if condition or an if else or even an if elsif else condition.
#   I am sorry this answer will be a bit long.
  
#   I assume you want to check if 5 == 5 or if true, then do something
  
#   1. Statement Modifiers:
#   puts ?5 if 5 == 5
#   2. Ternary Operators:
#   puts 5 == 5 ? ?5 : ''
#   3. If then end block in a line:
#   if 5 == 5 then puts ?5 end
#   4. Using Short Circuit Evaluators:
#   Short circuit evaluators are and and the && operators. Yes, they are not actually methods on an object.
  
#   5 == 5 and puts ?5    # => nil
#   or
  
#   5 == 5 && puts(?5)    # => nil
#   Here’s more about short-circuit evaluation:
#   en.wikipedia.org
#   Short-circuit evaluation
#   Short-circuit evaluation, minimal evaluation, or McCarthy evaluation (after John McCarthy) is the semantics of some Boolean operators in some programming languages in which the second argument is executed or evaluated only if the first argument does not suffice to determine the value of the expression: when the first argument of the AND function evaluates to false, the overall value must be false; and when the first argument of the OR function evaluates to true, the overall value must be true. I...
  
#   5. Using the & method (Eager Operator)
#   The & method is available on instances of TrueClass, FalseClass and NilClass. This is not equivalent to && and and and or and ||.
  
#   5.==(5).&(puts ?5)    # => false
#   Bonus Stuff. Let’s build one fizzbuzz game in one line.
#   In fizzbuzz game, you have to iterate over a range of numbers. When a number is divisible by 3, print ‘fizz’; when a number is divisible by 5 print ‘buzz’; when a number is divisible by both 3 and 5 (or 3 * 5) then print ‘fizzbuzz’. print the number if they don’t satisfy the above conditions…
  
#   Answer:
#   Using if:
#   #!/usr/bin/ruby -w
#   (1..100).each do |x|
#     if x.%(15).zero? then puts 'FizzBuzz'
#     elsif x.%(5).zero? then puts 'Buzz'
#     elsif x.%(3).zero? then puts 'Fizz'
#     else puts x
#     end
#   end
#   Using ternary operators:
#   #!/usr/bin/ruby -w
  
#   puts (1..100).map { |x| x.%(15).zero? ? 'FizzBuzz' : x.%(5).zero? ? 'Buzz' : x.%(3).zero? ? 'Fizz' : x }
#   You can use while, and until loops in a line too (without do end block):
#   #!/usr/bin/ruby -w
#   0.tap { |i| puts i.%(15).zero? ? 'FizzBuzz' : i.%(5).zero? ? 'Buzz' : i.%(3).zero? ? 'Fizz' : i while  (i += 1) < 100 }
#   Or even:
  
#   #!/usr/bin/ruby -w
#   puts (1..100).reduce([]) { |a, i| a.push i % 15 == 0 ? 'FizzBuzz' : i % 5 == 0 ? 'Buzz' : i % 3 == 0 ? 'Fizz' : i  }
#   I admit this can be written in 10 different ways again. But let’s stick with this for now!
#   If you are a beginner, try avoid printing (using puts, printf, p, pp, Kernel#display etc.) something in a loop, it takes a lot of time if you have to iterate over a million times. So append items to values, say, use map instead of times can be very efficient!
  
# Sorry, this answer is a bit long, but hope this helps.