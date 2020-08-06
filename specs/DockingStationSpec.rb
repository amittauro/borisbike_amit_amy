# As a member of the public
# So I can return bikes I’ve hired
# I want to dock my bike at the docking station

it "docking my bike" do
  # setup
  docking_station = DockingStation.new
  bike = Bike.new

  #execute
  result = docking_station.dock(bike) == [bike]

  expected = true
  #verify
  check_result(expected, result)

end
#
# As a member of the public,
# So that I can use a bike,
# I’d like a docking station to release a bike.

it "releases a bike " do 

# setup
  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.dock(bike)
  # execute
  result = docking_station.release
  expected = bike
# verify
  check_result(expected, result)
end
