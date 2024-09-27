# def stringy(num)
#   result_string = ''
#   num.times do |i|
#     result_string += (i.even? ? '1' : '0')
#   end
#   result_string
# end

# Further Exploration
def stringy(number, start = 1)
  result_string = ''

  number.times do |i|
    result_string << (i.even? ? (start == 1 ? '1' : '0') : (start == 1 ? '0' : '1'))
  end
  
  result_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'