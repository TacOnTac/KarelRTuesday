#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "moduleusethis"
require_relative "../karel/robota"

# a task for to make all the robots write at the same time
def task()
  world = Robota::World
  world.read_world("../worlds/Empty.txt")
  
  karel6 = ControlAll.new(23, 23, Robota::NORTH, 0)
  karel6.Say_HELLO()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(21, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end