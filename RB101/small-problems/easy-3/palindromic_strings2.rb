def palindrome?(text)
  text == text.reverse
end

def real_palindrome?(text)
  sanitized_text = text.downcase.gsub(/[^a-z0-9]/, '')
  palindrome?(sanitized_text)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')
