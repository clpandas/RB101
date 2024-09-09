def percentage_to_float(percentage)
  percentage.to_f / 100
end

print 'What is the bill? '
bill = gets.to_f
print 'What s the tip percentage? '
tip_percentage = gets.chomp

tip_calcuator = percentage_to_float(tip_percentage)
tip = bill * tip_calcuator
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"
