# Data type ruby
# String, Fixnum, Integer, Numeric, Float, NillClass, Hash, Symbol, Array, Range

# puts 'string'.class # String
# puts 'string'.class.superclass # Object
# puts 'string'.class.superclass.superclass # BasicObject
# puts 'string'.class.superclass.superclass.superclass # Nothing

# puts 1.class # Integer
# puts 1.class.superclass # Numeric
# puts 1.class.superclass.superclass # Object
# puts 1.class.superclass.superclass.superclass # BasicObject
# puts 1.class.superclass.superclass.superclass.superclass # Nothing

# puts 4.3.class # Float
# puts 4.3.class.superclass # Numeric
# puts 4.3.class.superclass.superclass # Object
# puts 4.3.class.superclass.superclass.superclass # BasicObject
# puts 4.3.class.superclass.superclass.superclass.superclass # Nothing

# puts nil.class # NilClass
# puts nil.class.superclass # Object
# puts nil.class.superclass.superclass # BasicObject
# puts nil.class.superclass.superclass.superclass # Nothing

people = {
  :name => 'John',
  :age => 25,
  :address => {
    :city => 'Jakarta',
    :country => 'Indonesia'
  }
}

# puts people.ancestors
# puts :hello.object_id

# puts people.class # Hash
# puts people.class.superclass # Object
# puts people.class.superclass.superclass # BasicObject
# puts people.class.superclass.superclass.superclass # Nothing

# puts :ruby.class # Symbol
# puts :ruby.class.superclass # Object
# puts :ruby.class.superclass.superclass # BasicObject
# puts :ruby.class.superclass.superclass.superclass # Nothing

# puts [].class # Array
# puts [].class.superclass # Object
# puts [].class.superclass.superclass # BasicObject
# puts [].class.superclass.superclass.superclass # Nothing

# puts (0..3).class # Range
# puts (0..3).class.superclass # Object
# puts (0..3).class.superclass.superclass # BasicObject
# puts (0..3).class.superclass.superclass.superclass # Nothing

# Class : 
# - String
# - Integer : 
#   - Numeric
# - Float : 
#   - Numeric
# - NillClass
# - TrueClass
# - FalseClass
# - Hash
# - Symbol
# - Array
# - Range
# - Regexp

# puts Object.class