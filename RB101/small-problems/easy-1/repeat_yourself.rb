# # Added validation to ensure the input string is in fact a String and is also not empty space. 
# # Added validation to ensure the input number is in fact a positive Integer.
# def repeat(string, number)
#   if !string.is_a?(String) || string.strip.empty?
#     puts "Invalid input: The first argument must be a non-empty string."
#     return
#   end

#   if !number.is_a?(Integer) || number < 0
#     puts "Invalid input: The second argumment must be a positive integer."
#     return
#   end

#   number.times { puts string }
# end

# # Using a while loop
# def repeat(string, number)
#   while number > 0
#     puts string
#     number -= 1
#   end
# end

# # Using a while loop with a counter
# def repeat(string, number)
#   count = 0
#   while count < number
#     puts string
#     count += 1
#   end
# end

# # Using a for loop
# def repeat(string, number)
#   for num in (1..number)
#     puts string
#   end
# end

# Using the each method
def repeat(string, number)
  (1..number).each {puts string}
end

repeat('Hello', 3)
# repeat('', 3)
# repeat(' ', 3)
# repeat(123, 3)
# repeat('Hello', -3)