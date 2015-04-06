require File.expand_path('quick_sort', File.dirname(__FILE__))

# Run quicksort method with an example
a = [9,4,2,0,1,6,7]

puts 'Sorting the array using quicksort algorithm...'
puts "Original: #{a.join(',')}"

quick_sort(a, 0, a.length-1)
puts "Result: #{a.join(',')}"