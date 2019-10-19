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



puts Symbol.all_symbols.length                      # => 3896
puts Symbol.all_symbols.grep(/dummy_method/)