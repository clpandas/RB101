# # A version inspired by the LS solution from Odd Numbers
# num = 2
# while num <= 99
#   puts num
#   num += 2
# end

# # A version taking the same approach as my solution to Odd Numbers
# (1..99).each {|num| puts num if num.even?}

# A version using the select method
(1..99).select {|num| puts num if num.even?}