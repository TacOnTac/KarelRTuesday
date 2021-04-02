#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end

require_relative "../mixins/turner"

class Diamond < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  # Add the tip of the home plate
  def add_tip
    put_beeper
    move
    move
    put_beeper
    turn_around
    move
    move
    turn_around
  end
  
  # Adjust the robot for the next cycle
  def adjust_for_tip
    move
    turn_right
    move
    turn_around
  end

  # Task to make the full diamond
  def diamond_full(x)
    4.times do
      add_tip
        x.times do #Change length of side
          move
          turn_right
          move
          put_beeper
          turn_left
        end
      adjust_for_tip
    end
  end
end