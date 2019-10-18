require "JSON"
require "awesome_print"

# ARRAY
animal = ['cat', 'dog', 'rat', 'fish', 'monkey']

# ap animal[-1] #monkey
# ap animal[0, 0] # print nothing
# ap animal[0, 2] # cat dog
# ap animal.slice(0, 2) # cat dog
# ap animal[0..2] # cat dog rat
# ap animal.[] 0, 2 # cat dog
# ap animal.[]0,2.to_s # >>>>> ERROR!
# ap animal[0, 2].to_s # cat dog
# ap animal.first
# ap animal.last
# ap animal.reverse
# ap animal.push('keong')
# ap animal << 'keong'
# ap animal.include?('fish')
# ap animal - ['rat', 'fish', 'monkey'] # cat dog
# ap [[1,2,3], [4,5,6], 7, [[8,9], 10]].flatten, :multiline => false
# ap [ 10, 2, 2, 6, 5, 6, 2, 3, 9, 10 ].uniq, :multiline => false

# Symbol
# :data1
{data1: "oke"}
# ap Symbol.all_symbols.grep(/data/), multiline: false
# ap animal.grep(/a/), multiline: false
# ap animal % ['cat', 'dog']

# HASH
# gem install awesome_print

people = {
  name: 'John',
  :age => 25,
  :address => {
    :city => 'Jakarta',
    :country => 'Indonesia'
  }
}

data = {
  "id": 1,
  "name": "John Doe",
  "age": 23,
  "address": {
    "country": "Jakarta",
    "city": "Indonesia"
  }
}

# data JSON with puts JSON.pretty_generate(data)
# puts people, :multiline => true

# ap people[:name]
# ap people
# ap ''.methods - Object.methods