def select(collection)
  result = []
  collection.each do |element|
    result << element if yield(element)
  end
  result
end
    
array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }      # => [1, 3, 5]
p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true

#using while
def select(collection)
  result = []
  index = 0
  while index < collection.size
    element = collection[index]
    result << element if yield(element)
    index += 1
  end
  result
end
    
array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }      # => [1, 3, 5]
p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true

=begin
Write a select method that mirrors the behavior of Array#select. 
Note that the Array#select method takes a block, then yields each element to the block. 
If the block evaluates to true, the current element will be included in the returned array. 
If the block evaluates to false, the current element will not be included in the returned array.
=end