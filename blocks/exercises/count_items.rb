def count(collection)
  count = 0
  collection.each { |element| count += 1 if yield(element) }
  count
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2
puts count([1,2,3,4,5]) { |value| '' } == 5

#not using each, loop, while, or until.
def count(collection)
  count = 0
  collection.size.times do |index|
    count += 1 if yield(collection[index])
  end
  count
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2
puts count([1,2,3,4,5]) { |value| '' } == 5

=begin
Write a method that takes an array as an argument, and a block that returns
true or false depending on the value of the array element passed to it. 
The method should return a count of the number of times the block returns true.
=end