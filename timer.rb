require 'benchmark'
require_relative 'sort'

short_names = IO.read('unordered_short.txt').split(',')
long_names = IO.read('unordered_long.txt').split(',')

puts "Small Set"
Benchmark.bm(15) do |x|
  x.report("Selection Sort") { selection_sort(short_names) }
  x.report("Insertion Sort") { insertion_sort(short_names) }
  x.report("Bubble Sort") { bubble_sort(short_names) }
  x.report("Alt Bubble Sort") { alt_bubble_sort(short_names) }
  x.report("Quick Sort") { short_names.sort! }
end

puts; puts "Large Set"
Benchmark.bm(15) do |x|
  x.report("Selection Sort") { selection_sort(long_names) }
  x.report("Insertion Sort") { insertion_sort(long_names) }
  x.report("Bubble Sort") { bubble_sort(long_names) }
  x.report("Alt Bubble Sort") { alt_bubble_sort(long_names) }
  x.report("Quick Sort") { long_names.sort! }
end
