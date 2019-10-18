require "JSON"
require "awesome_print"

# ARRAY
animal = ['cat', 'dog', 'rat', 'fish', 'monkey']

# ap animal.count
# ap animal.length
# ap animal[-1] #monkey
# ap animal[0, 0] # print nothing
# ap animal[0, 2] # cat dog
# ap animal.slice(0, 2) # cat dog
# ap animal.take(2) # cat dog
# ap animal[0..2] # cat dog rat
# ap animal.[] 0, 2 # cat dog
# ap animal.[]0,2.to_s # >>>>> ERROR!
# ap animal[0, 2].to_s # cat dog
# ap animal.first
# ap animal.last
# ap animal.reverse
# ap animal.push('keong')
# ap animal << 'keong'
# ap animal.unshift('monkey')
# ap animal.insert(1, 'penyelinap')
# animal.pop
# animal.shift
# ap animal.include?('fish')
# ap animal - ['rat', 'fish', 'monkey'] # cat dog
# ap [[1,2,3], [4,5,6], 7, [[8,9], 10]].flatten, :multiline => false
# ap [ 10, 2, 2, 6, 5, 6, 2, 3, 9, 10 ].uniq, :multiline => false
