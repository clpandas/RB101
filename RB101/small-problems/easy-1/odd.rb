# def is_odd?(number)
#   number % 2 != 0
# end

# # LS solution
# def is_odd?(number)
#   number % 2 == 1
# end

# # Further exploration
# def is_odd?(number)
#   number.abs.remainder(2) != 0
# end

def is_odd?(number)
  number.abs.remainder(2) == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)