=begin
Let's put what we've learned thus far into practice. Let's write our own times method that mimics the behavior of the Integer#times method. 
=end

def times(number)
  counter = 0
  while counter < number
    yield(counter)
    counter += 1
  end
  number
end

times(10) { puts "Mark" }
times(5) { |number| puts number }