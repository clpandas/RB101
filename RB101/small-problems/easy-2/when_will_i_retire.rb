print 'What is your age? '
age = gets.to_i
print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
remaining_work_years = retirement_age - age
retirement_year = current_year + remaining_work_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{remaining_work_years} years to work to go!"