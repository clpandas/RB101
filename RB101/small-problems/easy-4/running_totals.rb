# def running_total(array)
#   total = []
#   sum = 0
  
#   array.each do |num|
#     sum += num
#     total << sum
#   end

#   total
# end

# LS Solution
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# # Enumerable#each_with_object solution
# def running_total(array)
#   sum = 0
#   array.each_with_object([]) { |num, obj| obj << sum += num }
# end

# Enumerable#reduce solution
def running_total(array)
  sum = 0
  array.reduce([]) do |result, num|
    sum += num
    result << sum
  end
end 

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []