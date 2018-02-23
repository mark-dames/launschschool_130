def any?(collection)
  index = 0
  while index < collection.size
    return true if yield(collection[index])
    index += 1
  end
  false
end

puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false

#below worksd also with hashes and sets.
def any?(collection)
  collection.each do |arg|
    return true if yield(*arg)
  end
  false
end

puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([]) { |value| true } == false
puts any?({one: 1, two: 2}) { |key, value| value.odd? } == true

=begin
Write a method called any? that behaves similarly for Arrays. 
It should take an Array as an argument, and a block. 
It should return true if the block returns true for any of the element values. 
Otherwise, it should return false.
=end
