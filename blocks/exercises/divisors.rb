def divisors(number)
  (1..number/2).select { |digit| digit if number % digit == 0 } << number
end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

=begin
Write a method that returns a list of all of the divisors of 
he positive integer passed in as an argument. 
The return value can be in any sequence you wish.
=end

def divisors(num)
  return [1] if num < 2 
  sq_num = Math.sqrt(num)
  first_half = 1.upto(sq_num).select { |x| num % x == 0 }
  second_half = first_half.map { |x| num / x }.sort

  first_half + second_half
end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
puts divisors(999962000357)