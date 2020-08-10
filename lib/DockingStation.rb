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

  private
  def full?
    bikes.length >= @capacity
  end

  def empty?
    bikes.length == 0
  end
end
