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

# def the_day(path:, params: {})
#   puts path
#   puts params
# end

# the_day(path: 'hello')

# def filter(array)

# end

my_arr = [
  {
    name: 'john',
    address: 'jakarta'
  },
  {
    name: 'doe',
    address: 'tangerang'
  },
  {
    name: 'doe',
    address: 'tangerang2'
  }
]
# select built in function manual
# class Array
#   def my_filter
#     temp = []

#     self.each do |item|
#       temp << item if yield item
#     end

#     temp
#   end
# end

# puts my_arr.my_filter { |oke| oke[:name] == 'doe' }

# oke = [{ name: 'john', address: 'jakarta' }]
# find or select
puts my_arr.find { |item| item[:name] == 'doew' }.try(:address)