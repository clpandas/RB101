# def reversed_number(number)
#   # Convert number to a string
#   string = number.to_s
#   # Reverse the string
#   reversed_string = string.reverse
#   # Convert the reversed string back to a number
#   reversed_string.to_i
# end

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)