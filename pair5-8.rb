# Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the p keyword.

puts "What are you five favorite foods?"
foods = []
i = 0
while i < 5
  user_input = gets.chomp
  foods << user_input
  i += 1
end

i = 1
foods.each do |food|
  p "#{i}. I love #{food}"
  i += 1
end

# Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:

