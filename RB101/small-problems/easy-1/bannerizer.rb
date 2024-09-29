# def print_in_box(text)
#   # Determine the width of the box based on the length of the text
  # horizontal_rule = "+-#{'-' * text.length}-+"
  # empty_line = "| #{' ' * text.length} |"

  # # Print the box with the text inside
  # puts horizontal_rule
  # puts empty_line
  # puts "| #{text} |"
  # puts empty_line
  # puts horizontal_rule
# end

# # Truncated version
# def print_in_box(text)
#   terminal_width = 80
#   max_width = terminal_width - 4

#   if text.length > max_width
#     text = text[0...max_width]
#   end

#   horizontal_rule = "+-#{'-' * text.length}-+"
#   empty_line = "| #{' ' * text.length} |"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{text} |"
#   puts empty_line
#   puts horizontal_rule
# end

# Word wrapping version
def print_in_box(text)
  terminal_width = 80
  max_width = terminal_width - 4

  # Word wrapping logic
  words = text.split
  lines = []
  current_line = ''

  words.each do |word|
    if (current_line + word).length <= max_width
      current_line += word + ' '
    else
      lines << current_line.strip # Add the current line and reove the trailing whitespace
      current_line = word + ' ' # Start a new line with the current word
    end
  end
  lines << current_line.strip unless current_line.empty? # Add the last line

  # Find the width for the box based on the longest line
  box_width = (lines.map { |line| line.length }.max) || 0 # To account for empty text 

  horizontal_rule = "+#{'-' * (box_width + 2)}+"
  empty_line = "|#{' ' * (box_width + 2)}|"

  puts horizontal_rule
  puts empty_line
  lines.each { |line| puts "| #{line.ljust(box_width)} |" }
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('All that is gold does not glitter,
Not all those who wander are lost;
The old that is strong does not wither,
Deep roots are not reached by the frost.
From the ashes a fire shall be woken,
A light from the shadows shall spring;
Renewed shall be blade that was broken,
The crownless again shall be king.')
