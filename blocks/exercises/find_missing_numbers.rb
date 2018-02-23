def missing(numbers_list)
  return [] if numbers_list.size <= 1
  all_numbers = (numbers_list[0]..numbers_list[-1]).to_a
  all_numbers.keep_if { |number| !numbers_list.include?(number) }
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []

=begin
Write a method that takes a sorted array of integers as 
an argument, and returns an array that includes all of the 
missing integers (in order) between the first and last elements 
of the argument.
=end

def missing(array)
  return [] if array.size <= 1
  result = []
  number = array[0]
  while number <= array[-1]
    result << number unless array.include?(number)
    number += 1
  end
  result
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []

def missing(array)
  (array[0]..array[-1]).each_with_object([]) do |number, result|
    result << number unless array.include?(number)
  end
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []
