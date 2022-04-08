require "./player"
require "./question"

class Game
  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
  end
  
  def start
    is_player_one = true
    while @p1.lives > 0  && @p2.lives > 0
      # checks player turn with boolean
      player = is_player_one ? @p1 : @p2
      #initializes new question and outputs question to player 
      q = Question.new
      puts "Player #{player.id}: #{q.question}"
      # prompts player to answer question with input
      input = gets.chomp.to_i
      # game requests question class to check answer
      if q.is_correct_answer?(input)
        puts "Player #{player.id}: YES! You are correct."
      else 
        puts "Player #{player.id}: Seriously? No!"
        player.take_life
      end
      # checks player lives to see if game is over or continues
      if player.dead?
        other_player = is_player_one ? @p2 : @p1
        puts "Player #{other_player.id} wins with a score #{other_player.lives}/3"
        puts "GAME OVER"
        puts "Good bye!"
      else
        puts "P1: #{@p1.lives}/3 vs P2 #{@p2.lives}/3"
        puts "---- NEW TURN ----"
        is_player_one = !is_player_one
      end
    end
  end
end