# Two Player Math Game - Notes

## PLAYER CLASS

### STATE

```
@id (integer)
@lives (Integer)
```

### BEHAVIOUR
```
attr_reader :lives

def initialize(id)
  @id = id
  @lives = 3
end

def take_life 
  @lives -= 1
end

def dead?
  # returns true or false
end

```

## QUESTION CLASS

### STATE
```
@int_one = rand(1..20)
@int_two = rand(1..20)
@question = "What does #{@int_one} plus #{@int_two} equal?"
``` 

### BEHAVIOUR
```
attr_reader :question

def is_correct_answer?(input) 
    # [returns boolean]
end
```

## GAME CLASS

### BEHAVIOUR
```
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
```