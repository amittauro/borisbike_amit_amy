class DockingStation
  attr_reader :bikes
  CAPACITY = 20

  def initialize(capacity: CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    return  "Sorry,full" if full?
    @bikes << bike
  end

  def release
    return "Sorry there are none" if empty?
    bikes.each do |bike|
      if bike.working
        return bike
      end
    end
    nil
  end

  def bikes
    @bikes
  end


  def broken_bikes
    # array of bikes [bik1,bik2,bik3]
    broken_bikes = []
    bikes.each do |bike|
      if bike.working == false
        broken_bikes.push(bike)
      end
    end
    broken_bikes
  end


  private
  def full?
    bikes.length >= @capacity
  end

  def empty?
    bikes.length == 0
  end
end
