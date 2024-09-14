def character_count(word)
 word.chars.reject { |char| char.match?(/\s/) }.join.length
end

print "Please write a word or multiple words: "
input = gets.chomp
character_total = character_count(input)

puts "There are #{character_total} characters in \"#{input}\"."

# A version with: split.join.length 