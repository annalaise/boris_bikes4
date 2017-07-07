require '../lib/docking_station.rb'

station = DockingStation.new
station.dock(Bike.new)
station.bikes.broken?
