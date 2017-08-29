
require "./player.rb"
require "./question.rb"
require "./turn"

playerOne = MathGame::Player.new("playerOne",3)
playerTwo = MathGame::Player.new("playerTwo",3)

question1 = MathGame::Question.new(playerOne)
question2 = MathGame::Question.new(playerTwo)

turn1 = MathGame::Turn.new (1)

while (playerTwo.life > 0 && playerOne.life > 0)
  if (turn1.tn == 1 && playerTwo.life > 0)
    question1.q
  else
    if playerOne.life > 0
      question2.q
    end
  end
  turn1.change
  puts "playerOne #{playerOne.life}/3 vs playerTwo #{playerTwo.life}/3"
end

if playerOne.life == 0
  puts "playerTwo won!"
elsif playerTwo.life == 0
  puts "playerOne won!"
end
puts "-----Game over!-----"
puts "Good bye"


