# As a member of the public,
# So that I can use a good bike,
# I’d like to see if a bike is working

#Noun = bike
#Properties = status
#Message = is working
#Output = working/not working

it "says if it's working" do
  # set-up
  bike = Bike.new
  # execute
  result = bike.working
  expected = true
  # verify
  check_result(expected, result)
end

# As a member of the public,
# So that I reduce the chance of getting a broken bike in future,
# I’d like to report a bike as broken when I return it.

it "can be reported broken" do
  #set-up
  bike = Bike.new
  
  #execute
  #result = bike.not_working
  #expected = "not working"
  
  bike.not_working
  result = bike.working
  expected = false
  
  #verify
  check_result(expected, result)
end