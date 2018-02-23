def compute
  block_given? ? yield : "Does not compute."
end

puts compute { 5 + 3 } == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'

=begin
Write a method that takes an optional block.
If the block is specified, the method should execute it, and 
return the value returned by the block. If no block is specified,
the method should simply return the String 'Does not compute.'.
=end

def compute(arg)
  block_given? ? yield(arg) : "Does not compute."
end

puts compute("Mark") { |name| "Hello " + name }
puts compute(10) == "Does not compute."
puts compute([1,2,3]) {|arr| arr.shift } == 1