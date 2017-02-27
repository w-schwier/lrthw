$prompt = "> "
def gold_room
  prompt = "> "
  puts "This room is full of gold. How much do you take?"

  print prompt
  choice = $stdin.gets.chomp

  if choice =~ /0|1|2|3|4|5|6|7|8|9/
    how_much = choice.to_i
  else
    dead("Learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end



def bear_room
  puts """
  There is a bear here.
  The bear has a bunch of honey.
  The fat bear is in front of another door.
  How are you going to move the bear?
  """
  bear_moved = false

  prompt = "> "

  while true
    print $prompt
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He... it... whatever, stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  $prompt
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("well that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts "You have died", why, "Good job!"
  exit(0)
end

def start
  puts """
  You are in a dark room.
  There is a door to your right and left.
  which one do you take?
  """

  print $prompt
  choice = $stdin.gets.chomp

  if choice.include? "left"
    bear_room
  elsif choice.include? "right"
    cthulhu_room
  else
    dead("You stumble around the room until, finally, you starve!")
  end
end

start
