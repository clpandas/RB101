def greet(name ='Teddy')
  puts "Please enter a name:"
  user_input = gets.chomp
  name = user_input unless user_input.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

greet

# # another version
# puts "Please give me a name:"
# name = gets.chomp
# puts "#{name.empty? ? 'Teddy' : name} is #{rand(20..200)} years old!"