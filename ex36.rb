$prompt = "> "
$hp = 100
$door_locked = false

def hp_check(hp_lost)
  $hp -= hp_lost
  if $hp > 0
    puts "You have lost #{hp_lost}hp, you have #{$hp}hp left."
  else
    puts "You have lost #{hp_lost}hp, you have #{$hp}hp left. \nYou've only gone and died you berk!"
    exit(0)
  end
end

def start
  puts """
  \tYou find yourself on the door step of a decrepid, ancient house.
  You look around you, noticing some steps leading away from the house.
  As you turn back around you realise the door is now slightly ajar...
  \n\tDo you descend down the steps or go through the door?
  """

  while true
    print $prompt
    choice = $stdin.gets.chomp.downcase
    if choice =~ /down|steps|descend/
      puts """
      You come to your senses and turn away from the seemingly haunted house...
      It's never wise to linger in such places.
      As you're trudging down the stairs a stone slab under your foot gives way...
      Every step you fall down you can feel your hp draining away...
      Unfortuantely, there were 119 steps left!
      """
      $stdin.gets.chomp
      hp_check(119)
      puts """
      Well done, you've managed to walk away relitively unscathed!
      That's something to brag about right?
      ...
      Wrong!

      Now get out of here ya scamp!
      """
      exit(0)
    elsif choice.include? "door"
      if $door_locked == false
        puts "You slowly make your way into the house."
        hall_room
      else
        puts "Door is locked"
      end
    else
      puts "Please try again"
    end
  end
end

def hall_room
  $door_locked = true
  while true
    puts """
    Spiders webs and antiques dominate the room.
    Stepping into the dusty room, the door slams shut behind you.
    It looks like you're in the main hall-way. Two grand and imposing
    staircases curve round to meet each other at the top. To the left of the
    staircases there is a door with what look like stairs sinking into the
    ground. Between the stairs a corridor leads on into the rest of the house.
    """
    $stdin.gets.chomp
    puts """
    You realise you only have a few options in terms or your next move:

    1. Try to leave via the door you came in.
    2. Explore the upper rafters of the manor house.
    3. Venture further into the house's main body.
    4. Pit your luck in the hellish depths of this ancient hell-hold

    Which do you choose?
    """
    print $prompt
    choice = $stdin.gets.chomp

    if choice == "1"
      if $door_locked == true
        puts """
        The door has been mysteriously locked shut.
        Something is definitely not right here...
        You feel a sharp chill in the air and you can feel some of your life
        force leaving your body!
        """
        hp_check(3)
        $stdin.gets.chomp
      elsif $door_locked == false
        start
      end

    elsif choice == "2"
      puts """
      Slowly, you make your way up the stairs; each one screaming under foot as
      you ascend.
      At the top is a door, you peer through to discover a truly foul being of a
      creature...
      ...
      well
      ...
      *Ahem
      ...
      'going to pleasure town' shall we say.
      """
      $stdin.gets.chomp
      puts """
      Obviously the poor thing is peeved to say the least!
      You would be too if he walked in on you...
      Lets leave it there shall we.

      Anyway

      He runs at you with monstorous strength...
      And slams your nose in the door...
      Owch!
      """
      hp_check(20)
      $stdin.gets.chomp
      puts "You run back down the stairs 3 at a time.
      Having caught your breath you take another look around.."
      $stdin.gets.chomp

    elsif choice == "3"
      puts """
      Being careful to mind every step you take, slowly you cross the room.
      After a few minutes of edging your way forward you are finally under
      where the stairs meet.
      You pause to admire the intricacy of the decrative wood work lining the
      stairs
      ...
      ...
      ...
      CRASH
      """
      $stdin.gets.chomp
      puts """
      The rotted wood under you has given way and you appear to be in a basement
      of some sort.
      Getting up you realise you aren't as cat like as first thought!
      """
      hp_check(35)
      $stdin.gets.chomp
      basement_room

    elsif choice == "4"
      puts "Carefully you make your way down the steps into the darkness."
      basement_room

    else
      puts "Try again numpty, this time make sure you use a number!"
    end
  end
end

def basement_room
  puts """
  Your eyes slowly adjust to the deep darkness,
  looking around you can see a teddy bear on the wall.
  What do you do?
    Ignore it?
      or
    Investigate?
  """

  while true
    $prompt
    choice = $stdin.gets.chomp.downcase
    if choice.include? "ignore"
      puts """
      Very wise...
      Not wise to be messing with such things in places like this.
      ...
      Ignoring this has allowed you to focus your mind onto the task at hand...
      ...
      Escape!

      You notice a trap door and crawl through.
      """
      $stdin.gets.chomp
      puts "The fresh air and sunlight really bolster your mood and attitude."
      hp_check(-40)
      puts "Why don't you try the stairs again chum?"
      start

    elsif choice.include? "investigate"
      puts """
      The doll comes alive, as possessed!
      It harvests your soul and soils your body...
      """
      hp_check(200)
    else
      puts "Try again"
    end
  end
end

start
