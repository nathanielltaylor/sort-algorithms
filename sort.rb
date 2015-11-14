require 'pry'

def selection_sort(to_sort)
  for index in 0..(to_sort.length - 2)
    index_of_minimum = index
    for inner_index in index..(to_sort.length - 1)
      if to_sort[inner_index] < to_sort[index_of_minimum]
        index_of_minimum = inner_index
      end
      # Find smallest value in list to sort and set minimum to it
    end
    if index_of_minimum != index
      to_sort[index], to_sort[index_of_minimum] = to_sort[index_of_minimum], to_sort[index]
      # swap values from unsorted list until the current index (that closest to the sorted part)
      # is the smallest one in the currently unsorted portion
      # in other words, smallest value pushed to one end with each iteration
    end
  end
  to_sort
end

def insertion_sort(to_sort)
  for index in 1..(to_sort.length - 1)
    for inner_index in 0..(index - 1)
      # travel through indices of array to sort and count from 0 to that index
      # for each one
      if to_sort[inner_index] >= to_sort[index]
          to_sort.insert(inner_index, to_sort[index])
          to_sort.delete_at(index + 1)
          # if value at any inner index is larger than the value at index,
          # put the smaller index value there instead of where it is right now
      end
    end
  end
  to_sort
end

def bubble_sort(to_sort)
  sorted = false
  until sorted
      sorted = true
      for index in 0..(to_sort.length - 2)
        if to_sort[index] > to_sort[index + 1]
          sorted = false
          to_sort[index], to_sort[index + 1] = to_sort[index + 1], to_sort[index]
        end
      end
  end
  to_sort
end

# Can also be written as
def alt_bubble_sort(to_sort)
  return to_sort if to_sort.length <= 1
  swapped = true
  while swapped do
    swapped = false
    0.upto(to_sort.length - 2) do |i|
      if to_sort[i] > to_sort[i + 1]
        to_sort[i], to_sort[i + 1] = to_sort[i + 1], to_sort[i]
        swapped = true
      end
    end
  end
  to_sort
end
