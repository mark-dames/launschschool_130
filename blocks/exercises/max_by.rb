def max_by(collection)
  return nil if collection.empty?
  max_element = collection[0]
  current_max_return_value = yield(collection[0])
  collection[1..-1].each do |current_element|
    current_return_value = yield(current_element)
    if current_return_value > current_max_return_value
      current_max_return_value = current_return_value
      max_element = current_element
    end
  end
  max_element
end

puts max_by([1, 5, 3]) { |value| value + 2 } == 5
puts max_by([1, 5, 3]) { |value| 9 - value } == 1
puts max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
puts max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
puts max_by([-7]) { |value| value * 3 } == -7
puts max_by([]) { |value| value + 5 } == nil

=begin
Write a method called max_by that behaves similarly for Arrays. 
It should take an Array and a block, and return the element that contains
the largest value.
=end