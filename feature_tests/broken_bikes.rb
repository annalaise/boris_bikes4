require './lib/docking_station.rb'

bike1 = Bike.new
bike2 = BrokenBike.new
dock1 = DockingStation.new
dock1.dock(bike1) # docks working bike
dock1.dock(bike2.broken)# docks broken bike
