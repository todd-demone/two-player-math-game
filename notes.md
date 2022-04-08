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

def initialize
  @int_one = rand(1..20)
  @int_two = rand(1..20)
  @question = "What does #{@int_one} plus #{@int_two} equal?"
end

def is_correct_answer?(input) 
    # [returns boolean]
end
```

## GAME CLASS

### STATE
```
@p1 = Player.new(1)
@p2 = Player.new(2)
```

### BEHAVIOUR
```
def initialize
  @p1 = Player.new(1)
  @p2 = Player.new(2)
end

def start:
  is_player_one = true
  while (p1 not dead && p2 not dead)
    player = is_player_one ? @p1 : @p2 
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
        other_player = is_player_one ? @p2 : @p1
        puts "Player #{other_player.id} wins with a score #{other_player.lives}/3"
        puts "GAME OVER"
        puts "Good bye!"
    else
        puts "P1: #{p1.lives}/3 vs P2 #{p2.lives}/3"
        puts ---- NEW TURN ----
        is_player_one = !is_player_one
    end
  end
end
```