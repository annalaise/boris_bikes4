require './lib/docking_station.rb'

bike1 = Bike.new
dock1 = DockingStation.new

# Docking a working bike
dock1.dock(bike1)
# we expect this to appear in the @bikes arr.

# Docking a broken bike
# Dock requires user to indicate bike is broken
dock1.dock(Bike.new(false) # this docks a broken bike
