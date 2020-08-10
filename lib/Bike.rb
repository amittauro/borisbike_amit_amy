# class Bike
#   def initialize
#     @status = "working"
#   end
#   def working
#     #if bike is working
#     if @status == "working"
#       return true
#     #if not working
#     else
#       return false
#     end
#   end
#   def not_working
#     @status = "not working"
#   end
# end


class Bike
  attr_accessor :working
  def initialize
    @working = true
  end
  def not_working
    @working = false
  end
end
