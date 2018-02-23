def one?(collection)
  true_count = 0
  collection.each do |element|
    true_count += 1 if yield(element)
    return false if true_count > 1
  end
  true_count == 1
end

puts one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
puts one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
puts one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
puts one?([1, 3, 5, 7]) { |value| true }           # -> false
puts one?([1, 3, 5, 7]) { |value| false }          # -> false
puts one?([]) { |value| true }                     # -> false

=begin
Write a method called one? that behaves similarly for Arrays. 
It should take an Array as an argument, and a block. 
It should return true if the block returns true for exactly one of the element values.
Otherwise, it should return false.
=end