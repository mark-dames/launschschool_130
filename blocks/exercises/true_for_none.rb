def none?(collection)
  collection.each do |element|
    return false if yield(element)
  end
  true
end

puts none?([1, 3, 5, 6]) { |value| value.even? } == false
puts none?([1, 3, 5, 7]) { |value| value.even? } == true
puts none?([2, 4, 6, 8]) { |value| value.odd? } == true
puts none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts none?([1, 3, 5, 7]) { |value| true } == false
puts none?([1, 3, 5, 7]) { |value| false } == true
puts none?([]) { |value| true } == true

=begin
Write a method called none? that behaves similarly for Arrays. 
It should take an Array as an argument, and a block. 
It should return true if the block returns false for all of the element values. 
Otherwise, it should return false.
=end