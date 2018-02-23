def zip(array1, array2)
  array1.map.with_index do |element, idx|
    [element, array2[idx]]
  end
end

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
puts zip(["Mark", "Jan", "Olga"], [1,2,3]) == [["Mark", 1], ["Jan", 2], ["Olga", 3]]