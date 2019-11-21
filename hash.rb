require 'awesome_print'
# Hash

# There are several ways to create hashes in Ruby
# Literal notation

# human = {
#   "key1" => "value1",
#   :key2 => "value2"
# }
# ap human

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

example = {
  :john => 20,
  :selene => 25,
  :juleha => 15,
  :steven => 27,
  :budi => 12
}
test = :john

# Proc
over_twenty = Proc.new do |key, value|
  value > 20
end

# puts over_twenty
@enum_status = {
  0 => 'trial',
  1 => 'active',
  2 => 'freeze',
  3 => 'inactive'
}
puts @enum_status[2]

# result = example.select do |key, value|
#   value > 20
# end
# result = example.select &over_twenty
# ap result

# example.each_key do |key|
#   puts key
# end
# example.each_value do |value|
#   puts value
# end

# example.delete(:budi)
# ap example


# Shorthand

# people = {
#   key1: "value1",
#   key2: "value2",
# }
# ap :key1

# How to destructuring hash?
# arr_twin = ["this", "hello", "world", "hello", "okay", "this", "world"]
# default value on this hash .new(value)
# frequenz = Hash.new(0)
# arr_twin.each do |item|
#   frequenz[item] += 1
# end
# puts frequenz