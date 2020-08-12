class TestWorkingBike
  def working
    true
  end
end

class TestBrokenBike
  def working
    false
  end
end




it 'takes broken bikes from docking station' do

  bike1 = TestWorkingBike.new
  bike2 = TestBrokenBike.new
  bike3 = TestBrokenBike.new
  bikes = [bike1, bike2, bike3]
  van = Van.new(bikes)
  # we need to know if the bike is working or not
  # execute
  result = van.rack.length
  #van.rack stores broken bikes

  #verify
  check_result(result, 2)
end

it 'delivers bikes to the garage' do
  #set up
  # bikes equals an array of broken bikes
  broken_bike1 = TestBrokenBike.new
  broken_bike2 = TestBrokenBike.new
  broken_bike3 = TestBrokenBike.new
  bikes = [broken_bike1, broken_bike2, broken_bike3]
  van = Van.new(bikes)
  bikes = van.rack
  garage = Garage.new(bikes)
  # execute
  van.deliver
  result = van.rack.empty?

  #verify
  check_result(result, true)
end
