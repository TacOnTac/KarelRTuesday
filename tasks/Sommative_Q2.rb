#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/Sommative_final"

# task to make everything work
def task()
  world = Robota::World
  world.read_world("../worlds/Empty.txt")
  
  karel = Diamond.new(1, 15, Robota::NORTH, INFINITY)
  karel.diamond_full(11)
end

if __FILE__ == $0
  if $graphical
     screen = window(30, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end