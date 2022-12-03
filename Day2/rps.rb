# frozen_string_literal: true

# Opponet hand
# A = rock
# B = paper
# C = scissors
# Player hand
# X = rock, score + 2
# Y = paper, score + 1
# Z = scissors, score + 3

input = []
score = 0
win_condition = {
  "A": :Y,
  "B": :Z,
  "C": :X
}
draw_condition = {
  "A": :X,
  "B": :Y,
  "C": :Z
}
scoring = {
  "X": 1,
  "Y": 2,
  "Z": 3
}

File.foreach('input.txt') { |line| input.push(line) }

# Part one
input.each do |match|
  hands = match.split(' ')
  evle_hand = hands[0].to_sym
  player_hand = hands[1].to_sym

  if draw_condition[evle_hand] == player_hand
    score += 3
  elsif win_condition[evle_hand] == player_hand
    score += 6
  end
  score += scoring[player_hand]
end

p score

score = 0
# Part Two
conditions = {
  "X": 'lose',
  "Y": 'draw',
  "Z": 'win'
}
lose_condition = {
  "A": :Z,
  "B": :X,
  "C": :Y
}

input.each do |match|
  hands = match.split(' ')
  evle_hand = hands[0].to_sym
  condition = hands[1].to_sym

  if conditions[condition] == 'draw'
    score += scoring[draw_condition[evle_hand]]
    score += 3
  elsif conditions[condition] == 'win'
    score += scoring[win_condition[evle_hand]]
    score += 6
  else
    score += scoring[lose_condition[evle_hand]]
  end
end

p score
