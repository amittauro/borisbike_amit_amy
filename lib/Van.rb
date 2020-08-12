class Van

  def initialize(bikes)
    @bikes = bikes.select{ |bike| !bike.working }
#    @rack = []
  end
  #
  # def collect
  #   # @bikes.each do |bike|
  #   #   if bike.working == false
  #   #     @rack.push(bike)
  #   #   end
  #   # end
  #   # @bikes.select{ |bike| bike.working == false }
  #   @bikes
  # end

  def deliver
    #garage = Garage.new
    # @bikes.each do |bike|
    #   garage.bikes.push(bike)
    # end
    while @bikes.length > 0
      @bikes.pop
    end
  end

  def rack
    @bikes
  end

end
