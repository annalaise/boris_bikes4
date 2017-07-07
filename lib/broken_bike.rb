require './lib/docking_station.rb'

class BrokenBike
  attr_reader :working

  	def initialize(working=false)
  		@working = working
  	end

  end
