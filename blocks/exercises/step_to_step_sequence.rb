def step(begin_value, ending_value, step_value)
   begin_value.step(ending_value, step_value) do |current_value|
     yield(current_value)
   end
   begin_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
step(1, 9, 3) { |value| puts "value = #{value}" }

def step(begin_value, ending_value, step_value)
  current_value = begin_value
  loop do
    yield(current_value)
    break if current_value + step_value > ending_value
    current_value += step_value
  end
  begin_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
step(1, 9, 3) { |value| puts "value = #{value}" }

=begin
Write a method that does the same thing as Range#step, but does not operate 
on a range. Instead, your method should take 3 arguments: the starting value, 
the ending value, and the step value to be applied to each iteration.
Your method should also take a block to which it will yield (or call) 
successive iteration values.
=end