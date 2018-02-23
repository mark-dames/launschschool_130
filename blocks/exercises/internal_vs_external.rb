factorial = Enumerator.new do |y|
  n = 0
  loop do
    
    sum = n
    sum = 1 if n == 0
    (n-1).downto(1) do |num|
      sum *= num
    end
    y << sum
    n += 1
  end
end

7.times do |fac|
  puts factorial.next
end
factorial.rewind

puts "------------------------------------------"

factorial.each_with_index do |number, index|
  puts number
  break if index == 6
end
      