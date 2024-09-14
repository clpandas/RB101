def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
num1 = gets.to_i
prompt("Enter the second number:")
num2 = gets.to_i

# # Version 1
# prompt("#{num1} + #{num2} = #{num1 + num2}")
# prompt("#{num1} - #{num2} = #{num1 - num2}")
# prompt("#{num1} * #{num2} = #{num1 * num2}")
# prompt("#{num1} / #{num2} = #{num1 / num2}")
# prompt("#{num1} % #{num2} = #{num1 % num2}")
# prompt("#{num1} ** #{num2} = #{num1 ** num2}")

# # Version 2
# ["+", "-", "*", "/", "%", "**"].each do |operation|
#   prompt ("#{num1} #{operation} #{num2} = #{[num1, num2].inject(operation.to_sym)}")
# end

# Version 2.1 (exploring symbols)
[:+, :-, :*, :/, :%, :**].each do |operation|
  prompt ("#{num1} #{operation} #{num2} = #{[num1, num2].inject(operation)}")
end

# Version 3 (explore send method)