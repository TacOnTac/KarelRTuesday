require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"

class Wallfixer < UrRobot
  include SensorPack
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

	def fixwall
		8.times do
			while next_to_a_beeper?
				pick_beeper
			end

			unless next_to_a_beeper?
				5.times do
					put_beeper
				end
				move
			end

			while next_to_a_beeper?
				pick_beeper
			end

			unless next_to_a_beeper?
				5.times do
					put_beeper
				end
			end
		end

			turn_right
			move

		5.times do
			while next_to_a_beeper?
				pick_beeper
			end

			unless next_to_a_beeper?
				5.times do
					put_beeper
				end
				move
			end
		end

			turn_right
			move

		7.times do
			while next_to_a_beeper?
				pick_beeper
			end

			unless next_to_a_beeper?
				5.times do
					put_beeper
				end
				move
			end

			while next_to_a_beeper?
				pick_beeper
			end

			unless next_to_a_beeper?
				5.times do
					put_beeper
				end
			end
		end

			turn_right
			move

		5.times do
			while next_to_a_beeper?
				pick_beeper
			end

			unless next_to_a_beeper?
				5.times do
					put_beeper
				end
				move
			end
		end
		move
	end

end