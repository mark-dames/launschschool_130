items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Let's start gathering food."
end

gather(items) {|items| puts "#{items.join(', ')}"}

gather(items) do |produce|
  puts "We've gathered some vegetables: #{produce[1]} and #{produce[2]}"
end

=begin
Modify the method below so that the display/output of items is moved 
to a block, and its implementation is left up to the user of the gather method.
=end