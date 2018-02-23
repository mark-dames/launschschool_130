def all?(collection)
  index = 0
  while index < collection.size
    return false unless yield(collection[index])
    index += 1
  end
  true
end

puts all?([1, 3, 5, 6]) { |value| value.odd? } == false
puts all?([1, 3, 5, 7]) { |value| value.odd? } == true
puts all?([2, 4, 6, 8]) { |value| value.even? } == true
puts all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts all?([1, 3, 5, 7]) { |value| true } == true
puts all?([1, 3, 5, 7]) { |value| false } == false
puts all?([]) { |value| false } == true

#using all to work also with hashes and sets
def all?(collection)
  collection.each do |element|
    return false unless yield(*element)
  end
  true
end

puts all?([1, 3, 5, 6]) { |value| value.odd? } == false
puts all?([1, 3, 5, 7]) { |value| value.odd? } == true
puts all?({one: 1, three: 3, five: 5}) { |key, value| value.odd? } == true
puts all?({one: 1, three: 2, five: 5}) { |key, value| value.odd? } == false