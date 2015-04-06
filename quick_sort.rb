
# Sorts an integer array in ascending order using quicksort algorithm
# @params array [Array] Target array to sort
# @params low [Integer]
# @params high [Integer]
# @return [Array] Sorted array
def quick_sort(array, low=0, high=nil)
  return array if array.length <= 1
  high = array.length-1 if high.nil?

  if low < high
    p_index = partition(array, low, high)
    quick_sort(array, low, p_index-1)
    quick_sort(array, p_index+1, high)
  end
end


# Selects a pivot, and rearranges the input array so that all the elements
# lesser than pivot are to the left of it and all the elements greater than the pivot are to the right of it.
# @params array [Array] Target array to sort
# @params low [Integer] The lowest index of the sub-array
# @params high [Integer] The highest index of the sub-array
# @return [Integer] Partition index
def partition(array, low, high)
  # Select the right most element in the segment
  pivot = array[high]
  p_index = low

  for i in low..high-1
    if array[i] <= pivot                                    # Smaller than pivot, must move
      array[i], array[p_index] = array[p_index], array[i]   # Swap the value
      p_index += 1
    end
  end
  array[p_index], array[high] = array[high], array[p_index] # Swap the value

  p_index
end


# Utility function for printing all elements inside of an array
# @params array [Array] Array
# @return [String] E.g. [0,1,2] => '0 1 2'
def print(array)
  s = ''
  array.each do |a|
    s += "#{a} "
  end
  s[0..-2]  # Remove the last character and return
end
