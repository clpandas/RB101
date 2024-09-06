def center_of(string)
  # Get length of string
  length = string.length
  # Get the middle of the string
  middle_index = length / 2

  if length.even?
    # Return the two middle character if string is even length
    string[middle_index - 1, 2]
  else
    # Return the single middle character if string is odd length
    string[middle_index]
  end
end

p center_of('I love Ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'