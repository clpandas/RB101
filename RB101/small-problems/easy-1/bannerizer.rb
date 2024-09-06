def print_in_box(text)
  # Determine the width of the box based on the length of the text
  horizontal_rule = "+-#{'-' * text.length}-+"
  empty_line = "| #{' ' * text.length} |"

  # Print the box with the text inside
  puts horizontal_rule
  puts empty_line
  puts "| #{text} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')