def palindromic_number?(number)
  reversed_number = number.to_s.reverse.to_i
  number == reversed_number
end

# # LS solution
# def palindrome?(text)
#   text == text.reverse
# end

# def palindromic_number?(number)
#   palindrome?(number.to_s)
# end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)