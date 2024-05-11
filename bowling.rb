# print ten frames into an array
rolls = []

# First 9 frames
9.times do
  pin_count = 10
  first_roll = rand(0..10)
  pin_count -= first_roll
  if first_roll < 10
    second_roll = rand(0..pin_count)
  else
    second_roll = 0
  end
  rolls << [first_roll, second_roll]
end

# Last frame
1.times do
  pin_count = 10
  first_roll = rand(0..10)
  pin_count -= first_roll
  if first_roll == 10
    second_roll = rand(0..10)
    if second_roll == 10
      third_roll = rand(0..10)
    else
      third_roll = rand(0..10)
    end
  end
  if first_roll < 10
    second_roll = rand(0..pin_count)
    if first_roll + second_roll == 10
      third_roll = rand(0..10)
    else
      third_roll = 0
    end
  end
  rolls << [first_roll, second_roll, third_roll]
end

#calculate score
p rolls
score = []
i = 0
while i < rolls.length
  if rolls[i][0] == 10 && rolls[i] != rolls[-1]
    rolls[i] += rolls[i + 1]
  elsif rolls[i].sum == 10 && rolls[i] != rolls[-1]
    rolls[i] += [rolls[i + 1].first, 0]
  end
  score << rolls[i].sum
  i += 1
end
score = score.sum
p score