require "awesome_print"

# the difference lambda & proc
# 1.
#   my_lambda.call(10) will error, need to full fill the arguments
#     my_proc.call(10) will run smoothly
# 2. 
#   Should work
#   my_lambda = -> { return 1 }
#   puts "Lambda result: #{my_lambda.call}"
#   Should raise exception
#   my_proc = Proc.new { return 1 }
#   puts "Proc result: #{my_proc.call}"

my_proc = Proc.new do |num1, num2|
  puts "#{num1} + #{num2}"
end
my_proc.call(10, 15)

# my_lambda = lambda do |num1, num2|
#   puts num1 + num2
# end
my_lambda = ->(num1, num2) { puts "#{num1} + #{num2}" }

my_lambda.call(10, 15)
my_lambda.(10, 15)
my_lambda[10, 15]
my_lambda.=== 10, 15

puts my_proc.lambda?
puts my_lambda.lambda?


# =============== Closures - start ===============

def call_proc(my_proc)
  count = 500
  my_proc.call
end

count   = 3000
my_proc = Proc.new { puts count }

puts call_proc(my_proc) # 3000

# =============== Closures - end ===============



# example = {
#   :john => 20,
#   :selene => 25,
#   :juleha => 15,
#   :steven => 27,
#   :budi => 12
# }

# Proc
# over_twenty = Proc.new do |key, value|
#   value > 20
# end
# over_twenty = lambda do |key, value|
#   value > 20
# end

# puts over_twenty

# result = example.select do |key, value|
#   value > 20
# end
# result = example.select &over_twenty
# ap result

# def my_fn
#   hello = Proc.new do
#     puts "hello"
#   end
#   hello.call
#   "world"
# end
# puts my_fn # world

# def my_fn
#   hello = lambda do
#     puts "hello"
#   end
#   hello.call
#   "world"
# end
# puts my_fn # world

# def trees
#   leaf = lambda { return "I'm blowing in the wind" }
#   leaf.call
#   return "I'm standing still"
# end
# def trees
#   leaf = lambda { puts "I'm blowing in the wind" }
#   leaf.call
#   return "I'm standing still"
# end
# def trees
#   leaf = Proc.new { return "I'm blowing in the wind" }
#   leaf.call
#   return "I'm standing still"
# end

# puts trees