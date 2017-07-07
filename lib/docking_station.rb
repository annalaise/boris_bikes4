require './lib/bike.rb'
require './lib/broken_bike.rb'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
	@bikes = []
  @capacity = capacity
  end

  def dock(bike)
    @bikes << bike
  end 

  def release_bike
  	fail "Sorry mate, no bikes left" if empty?
  end

private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
