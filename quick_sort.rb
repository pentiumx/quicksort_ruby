
# Sorts an integer array in ascending order using quicksort algorithm.
# @params array [Array] Target array to sort
# @params low [Integer] The lowest index of the sub-array
# @params high [Integer] The highest index of the sub-array
# @return [Array] Sorted array in range between low and high indices
def quick_sort(array, low=0, high=nil)
  return array unless validate(array)

  high = array.length-1 if high.nil?

  if low < high
    p_index = partition(array, low, high)
    quick_sort(array, low, p_index-1)
    quick_sort(array, p_index+1, high)
  end
  array
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


# Check if it is an integer array or not.
# @params array [Array] Array to check
# @return [Boolean] Returns true if the array contains integer values only
def validate(array)
  return false unless array.is_a? Array
  return false if array.length <= 1
  array.each do |a|
    return false unless a.is_a? Fixnum
  end

  true
end

