require "JSON"
require "awesome_print"

# ARRAY
# animal = ['cat', 'dog', 'rat', 'fish', 'monkey']

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

# animal.map do |item|
#   puts item
# end
# puts animal.map(&:chars)

# will_sort = [3,2,5,1,4,10,6,7,8,9]

# def sort(arr)
#   for i in (0..(arr.count - 1))
#     for j in ((i + 1)..(arr.count - 1))
#       if arr[i] > arr[j]
#         arr[i], arr[j] = arr[j], arr[i]
#       end
#     end
#   end
#   arr
# end

# ap sort(will_sort), :multiline => false
# will_sort.each do |item| 
#   puts item
# end

# people = ['john', 'doe']
# people2 = ['william', 'doe']

# ap (['doe'] - people).any?
arr = [1,2,3,4,5] - [4,5,1]

ap arr