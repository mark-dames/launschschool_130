def count(*values)
  true_count = 0
  values.each do |value|
    true_count += 1 if yield(value)
  end
  true_count
end

puts count(1, 3, 6) { |value| value.odd? } == 2
puts count(1, 3, 6) { |value| value.even? } == 1
puts count(1, 3, 6) { |value| value > 6 } == 0
puts count(1, 3, 6) { |value| true } == 3
puts count(1, 3, 6, 7, 8 , 9) { |value| true } == 6
puts count(1, 3, 6, 7, 8 , 9) { |value| nil } == 0
puts count() { |value| true } == 0