def each(collection)
  index = 0
  while index < collection.size
    yield(collection[index])
    index += 1
  end
  collection
end

each([1,2,3,4,5]) {|number| puts number }
each(%w(mark jan ilse)) {|name| puts "My name is #{name}."}

=begin
Let's now try to apply what we know about blocks and build our own each method. 
By now, you should be very familiar with the Array#each method, and we'll be using that method as our inspiration. 
One subtlety to note, though, is that the Array#each method returns the calling object at the end.
=end