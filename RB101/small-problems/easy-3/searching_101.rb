=begin
My approach is similar to the LS solution.
However, instead of appending the user input directly in the empty initialized array,
I initalized a middle-man variable to for the user input,
and I appended that variable to the empty array.
I was also practicing creating a prompt method for uniform questions.
=end

def prompt(message)
  puts("==> #{message}")
end

saved_numbers = []
prompt "Enter the 1st number:"
number = gets.to_i
saved_numbers << number

prompt "Enter the 2nd number:"
number = gets.to_i
saved_numbers << number

prompt "Enter the 3rd number:"
number = gets.to_i
saved_numbers << number

prompt "Enter the 4th number:"
number = gets.to_i
saved_numbers << number

prompt "Enter the 5th number:"
number = gets.to_i
saved_numbers << number

prompt "Enter the last number:"
last_number = gets.to_i

if saved_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{saved_numbers}."
else
  puts "The number #{last_number} does not appear in #{saved_numbers}."
end