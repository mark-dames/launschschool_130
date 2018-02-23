items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *first, last|
  puts first.join(', ')
  puts last
end

gather(items) do | first, *middle, last|
  puts first
  puts middle.join(', ')
  puts last
end

gather(items) do | first, *last|
  puts first
  puts last.join(', ')
end

gather(items) do | first, second, thirth, fourth|
  puts "#{first}, #{second}, #{thirth}, #{fourth}"
end

def gather(*produce, wheat)
  puts "Let's start gathering food."
  p produce
  puts wheat
  puts "We've finished gathering!"
end

# 2
def gather(apples, *vegetables, wheat)
  puts "Let's start gathering food."
  puts apples
  p vegetables
  puts wheat
  puts "We've finished gathering!"
end

# 3
def gather(apples, *assorted)
  puts "Let's start gathering food."
  puts apples
  p assorted
  puts "We've finished gathering!"
end

# 4
def gather(apples, corn, cabbage, wheat)
  puts "Let's start gathering food."
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
  puts "We've finished gathering!"
end

# method call

gather(*items) # notice we need a splat operator for passing in that array now.