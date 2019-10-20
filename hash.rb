require 'awesome_print'
# Hash

# There are several ways to create hashes in Ruby
# Literal notation

# human = {
#   "key1" => "value1",
#   :key2 => "value2"
# }
# ap human


# Shorthand

people = {
  key1: "value1",
  key2: "value2",
}
ap :key1

# How to destructuring hash?

arr_twin = ["this", "hello", "world", "hello", "okay", "this", "world"]
# default value on this hash .new(value)
frequenz = Hash.new(0)
arr_twin.each do |item|
  frequenz[item] += 1
end

puts frequenz