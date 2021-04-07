#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/Final_Q4_mixin"


def task()
  world = Robota::World
  world.read_world("../worlds/mur.kwld")
  
  karel = Wallfixer.new(2, 3, Robota::NORTH, INFINITY)
  karel.fixwall
end

if __FILE__ == $0
  if $graphical
     screen = window(13, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
