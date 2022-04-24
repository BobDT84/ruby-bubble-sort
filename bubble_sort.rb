def bubble_sort(array)
  swaps = 1
  loops = 0
  until swaps == 0
    loops += 1
    swaps = 0
    array.each_with_index do |value, index|
      next_value = array[index + 1]
      next unless (index + 1) < array.length && value > next_value

      array[index] = next_value
      array[index + 1] = value
      swaps += 1
    end
  end
  puts loops
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2]) #=> [0,2,2,3,4,78]
