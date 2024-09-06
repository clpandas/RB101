def stringy(num)
  result_string = ''
  num.times do |i|
    result_string += (i.even? ? '1' : '0')
  end
  result_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'