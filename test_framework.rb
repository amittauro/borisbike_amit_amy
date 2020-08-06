require 'colorize'

def assert_equals(x,y)
  x == y
end

def check_result(expected, result)
  if assert_equals(expected, result)
    puts "Passed test".green
  else
    puts "Failed test\nExpected: #{expected}\nGot     : #{result}".red
  end
end

def it (description, &test_block)
  # &test_block should end by calling check_result to evaluate whether the test's acceptance criteria have been met.
  print "It #{description} - "
  test_block.call
end