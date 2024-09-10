def prompt(message)
  puts(">>#{message}")
end

def compute_operation(number, operation)
  case
  when operation == 's'
    sum = (1..number).sum
    puts "The sum of the integers between 1 and #{number} is #{sum}"
  when operation == 'p'
    product = (1..number).inject {|product, num| product * num}
    puts "The product of the integers between 1 and #{number} is #{product}"
  end
end

prompt("Please enter an integer greater than 0")
number = gets.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

compute_operation(number, operation)