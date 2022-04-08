# Two Player Math Game - Notes

## QUESTION CLASS

### STATE
int_one = rand(1..20)
int_two = rand(1..20)
@question = "What does #{int_one} plus #{int_two} equal?"
@result = 

### BEHAVIOUR
attr_reader :question, :result
is_correct_answer?(input) [returns boolean]
- formulate a question using the numbers
    - ex. @int_one + @int_two = result
    "What does #{int_one} plus #{int_two} equal?"

## PLAYER CLASS

### STATE

lives (Integer)

### BEHAVIOUR

attr_reader :lives
player.take_life = player.lives--
dead? returns true or false

def initialize(id)
  @id = id
  @lives = 3
end

## GAME CLASS

### BEHAVIOUR
def initialize
  @p1 = Player.new(1)
  @p2 = Player.new(2)
end

is_player_one? = true
game loop:
  player = is_player_one? ? @p1 : @p2 
  q = Question.new
  puts "Player #{player.id}: #{q.question}"
  input = gets.chomp.to_i
  if q.is_correct_answer?(input)
    puts "Player #{player.id}: YES! You are correct."
  else 
    puts "Player #{player.id}: Seriously? No!"
    player.take_life
  end
  if player.dead?
    Player #{player.id} wins with a score #{player.lives}/3
    GAME OVER
    Good bye!
    [exit from loop]
  else
    puts "P1: #{p1.lives}/3 vs P2 #{p2.lives}/3"
    puts ---- NEW TURN ----
    switch is_player_one is_player_one = !is_player_one