# def triangle(n, i = 0)
#   # Base case: stop recursion when i reaches n
#   return if i == n

#   # Print leading spaces
#   print ' ' * (n - i - 1)
#   # Print stars
#   print '*' * (i + 1)
#   # Move to the next line
#   puts

#   # Recursive call to print the next row
#   triangle(n, i + 1)
# end

def triangle(n)
  spaces = n - 1
  stars = 1

  n.times do |i|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)
triangle(1)
triangle(star)