require "awesome_print"

# [1, 2, 3, 3000].each do |number|
#   ap "You know what number I love?"
#   ap "I love you #{number}!"
#   puts ""
# end

# (1..3).each do |num|
#   ap num
# end

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

# for n in [1,2,3]
#   puts n
# end

# counter = 0

# loop do
#   counter += 1
#   next if counter.even?;
#   break if counter >= 10
#   ap "It's work! #{counter} times"
# end
print "Input your sentence here: "
sentence = gets.chomp

print "Input your forbidden word: "
forbidden_word = gets.chomp

filtered_sentence = ""
sentence.split(" ").each_with_index do |word, idx|
  if word != forbidden_word
    filtered_sentence += word
  else
    for n in word.chars
      filtered_sentence += "*"
    end
  end
  
  if idx < sentence.split(" ").length - 1
    filtered_sentence += " "
  end
end

ap filtered_sentence