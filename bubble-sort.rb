=begin
Bubble sort
- Takes an array, return sorted array NOT using #sort but bubble sort methodology
=end

def bubble_sort(array)
  n = array.length
  
  array.each do |number|
    # resets 'swapped' in each loop
    swapped = false

    # inclusive for loop (that includes high value, n-1)
    for i in 1..n-1 do
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1]
        swapped = true
      end
    end
  end
end

p bubble_sort([4,3,78,2,0,2]) #=> [0,2,2,3,4,78]
p bubble_sort([105,3,9,1,0,2,9,200,6,-1])