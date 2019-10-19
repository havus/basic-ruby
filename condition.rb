# Function and Condition

# if not true and false or false && false || !false
# if !true and false or false && false || (not false)
#   puts 'Nice!'
# end

# Ternary Operator
# false ? (puts 1) : (puts -1)
# puts true ? ?7 : '' # 7
# puts true ? ?7 * 3 : '' # 777
# puts "string" == "string"
# true && (print "benar "; puts "lagi")
# false || (print "salah " ; puts "lagi")
# 5.==(5).&(puts ?5)

# number = 3
# case number
#   when 1
#     puts "satu"
#   when 2
#     puts "dua"
#   when 3
#     puts "tiga"
#   else
#     puts "lain-lain"
# end

def shout(args)
  # print the same result with return and without it
  if args == 10
    puts "Ini angka sepuluh"
  elsif args == 11
    puts "Ini angka sebelas"
  else
    puts "Ini angka sepuluh atau sebelas"
  end

  unless args == 10
    puts "It's work :)"
  end
end

puts shout(12)
