class DockingStation
  attr_reader :bikes
  CAPACITY = 20

  def initialize()
    @bikes = []
  end
  def dock(bike)
    @bikes << bike
  end
  def release
      return "Sorry there are none" if empty?
      bikes.pop
  end
  private
    def empty?
    bikes.length == 0
    end
end
