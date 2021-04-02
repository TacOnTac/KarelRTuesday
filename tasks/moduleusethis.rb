#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class ControlAll < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # Complete task
    def Say_HELLO
  
  karel = EcrivianDeH.new(3, 2, Robota::NORTH, 12)
  karel2 = EcrivianDeE.new(3, 9, Robota::WEST, 11)
  karel3 = EcrivianDeL.new(3, 13, Robota::WEST, 7)
  karel4 = EcrivianDeL.new(3, 17, Robota::WEST, 7)
  karel5 = EcrivianDeO.new(3, 21, Robota::WEST, 12)

  karel.ecrit_lettre()
  karel2.ecrit_lettre()
  karel3.ecrit_lettre()
  karel4.ecrit_lettre()
  karel5.ecrit_lettre()

    end
end

# A class that controls all the writing robots
class EcrivianDeH < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def move_4times()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
    end

  
  # Complete task
    def ecrit_lettre
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_right()
        move()
        move()
        move()
        turn_right()
        put_beeper()
        move_4times()
        turn_around()
        move()
        move()
        turn_left()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_off()
    end
end

class EcrivianDeE < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def move_4times()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
    end

  
  # Complete task
    def ecrit_lettre
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_right()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_right()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_left()
        move()
        move()
        put_beeper()
        turn_left()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_left()
        move()
        put_beeper()
        turn_off()
    end
end

class EcrivianDeL < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def move_4times()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
    end

  
  # Complete task
    def ecrit_lettre
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_right()
        move_4times()
        turn_off()
    end
end


class EcrivianDeO < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def move_4times()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
    end

  
  # Complete task
    def ecrit_lettre
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_right()
        move_4times()
        turn_right()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_right()
        move()
        put_beeper()
        move()
        put_beeper()
        move()
        put_beeper()
        turn_off()
    end

end